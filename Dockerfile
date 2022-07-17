# syntax=docker/dockerfile:1
ARG DEBIAN_VERSION=bullseye-slim

FROM debian:${DEBIAN_VERSION} AS downloader

WORKDIR /tmp/packages

ARG RCON_VERSION=1.5.1
ADD https://github.com/itzg/rcon-cli/releases/download/${RCON_VERSION}/rcon-cli_${RCON_VERSION}_linux_amd64.tar.gz rcon-cli.tar.gz
RUN tar xf rcon-cli.tar.gz

ARG MC_SERVER_RUNNER_VERSION=1.8.0

ADD https://github.com/itzg/mc-server-runner/releases/download/${MC_SERVER_RUNNER_VERSION}/mc-server-runner_${MC_SERVER_RUNNER_VERSION}_linux_amd64.tar.gz mc-server-runner.tar.gz
RUN tar xf mc-server-runner.tar.gz

FROM debian:${DEBIAN_VERSION} AS base

SHELL ["/bin/bash", "-c"]

# Install all requirements first
COPY docker/apt-packages.list /tmp/apt-packages.list
RUN apt-get update \
  && xargs apt-get install -y < <(sed '/^#/d' /tmp/apt-packages.list) \
  && rm -rf /var/lib/apt/lists/*

# Install required software in requirements.txt
COPY docker/manager-requirements.txt /tmp/requirements.txt

RUN pip3 install -r /tmp/requirements.txt

COPY --from=downloader /tmp/packages/rcon-cli /usr/bin/rcon-cli
COPY --from=downloader /tmp/packages/mc-server-runner /usr/bin/mc-server-runner

RUN useradd --create-home --uid 1000 runner


COPY --link docker/known_hosts docker/config_repo_ro_key /home/runner/.ssh/

RUN chown -R runner:runner /home/runner/.ssh \
    && chmod 0600 /home/runner/.ssh/*

USER runner

WORKDIR /nearvanilla

COPY --link manage.py /nearvanilla/manage.py
COPY --link server_manager/ /nearvanilla/server_manager/

# TODO: Configure entrypoint git to use it
COPY --link scripts/githooks/ /nearvanilla/githooks/

COPY --link docker/*.sh /nearvanilla/
ENTRYPOINT ["dumb-init", "--", "/nearvanilla/entrypoint.sh"]
CMD ["/nearvanilla/start.sh"]

ENV RCON_PORT=25575