#!/usr/bin/env python3

from __future__ import annotations

import dataclasses
import enum
import json
from pathlib import Path
from zipfile import ZipFile

import yaml

from server_manager.plugin_exceptions import *


@enum.unique
class PluginPlatform(enum.Enum):
    PAPER = enum.auto()
    VELOCITY = enum.auto()


@enum.unique
class PluginComparison(enum.Enum):
    OUTDATED = enum.auto()
    UP_TO_DATE = enum.auto()
    NEWER = enum.auto()
    CHANGED = enum.auto()


@dataclasses.dataclass(frozen=True)
class PluginInfo:
    name: str
    version: str
    platform: PluginPlatform
    raw: dict

    @classmethod
    def from_data(cls, data: dict, platform: PluginPlatform) -> PluginInfo:
        version = data["version"]
        # Handle dumb plugins specifying version as array
        if isinstance(version, list) and len(version) == 1:
            version = version[0]
        return cls(name=data["name"], version=version, platform=platform, raw=data)

    def compare_to(self, other: PluginInfo) -> PluginComparison:
        """Returns whether this plugin is older, newer or up to date to the other one"""
        if self.name != other.name:
            raise ValueError(
                f"Can't compare two different plugins - {self.name} and {other.name}"
            )
        myversion = self._versiontuple(self.version)
        otherversion = self._versiontuple(other.version)
        if myversion == otherversion:
            if self.version != other.version:
                # Main versions match, but additional stuff not
                return PluginComparison.CHANGED
            return PluginComparison.UP_TO_DATE
        elif myversion < otherversion:
            return PluginComparison.OUTDATED
        elif myversion > otherversion:
            return PluginComparison.NEWER
        else:
            raise RuntimeError(
                f"Unable to compare versions `{self.version}` and `{other.version}`"
            )

    @staticmethod
    def _versiontuple(version: str) -> tuple[int, ...]:
        # Get rid of additional crap
        for separator in ("+", "-"):
            version = version.split(separator)[0]
        # TODO: Don't assume they are ints
        return tuple(int(i) for i in version.split("."))


def get_paper_plugin_info(file: Path) -> PluginInfo:
    datafile = "plugin.yml"
    if not file.exists():
        raise FileNotExistentException(file)
    with ZipFile(file) as zipfile:
        try:
            zipfile.getinfo(datafile)
        except KeyError as e:
            raise NotAPaperPluginException(
                f"{file} does not contain {datafile}!"
            ) from e
        with zipfile.open(datafile) as plug:
            data = yaml.safe_load(plug)
        return PluginInfo.from_data(data=data, platform=PluginPlatform.PAPER)


def get_velocity_plugin_info(file: Path) -> PluginInfo:
    datafile = "velocity-plugin.json"
    if not file.exists():
        raise FileNotExistentException(file)
    with ZipFile(file) as zipfile:
        try:
            zipfile.getinfo(datafile)
        except KeyError as e:
            raise NotAVelocityPluginException(
                f"{file} does not contain {datafile}!"
            ) from e
        with zipfile.open(datafile) as plug:
            data = json.load(plug)
        return PluginInfo.from_data(data=data, platform=PluginPlatform.VELOCITY)


def get_plugin_info(file: Path) -> PluginInfo:
    if not file.exists():
        raise FileNotExistentException(file)

    try:
        return get_paper_plugin_info(file)
    except NotAPaperPluginException:
        return get_velocity_plugin_info(file)