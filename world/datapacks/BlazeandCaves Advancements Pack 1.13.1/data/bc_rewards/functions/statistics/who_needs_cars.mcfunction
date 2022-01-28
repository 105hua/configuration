execute if score goal bac_settings matches 1 run function bc_rewards:msg/statistics/who_needs_cars
execute if score goal bac_settings matches -1 unless score blazeandcave:statistics/who_needs_cars bac_obtained matches 1.. run function bc_rewards:msg/statistics/who_needs_cars
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/who_needs_cars
execute if score reward bac_settings matches -1 unless score blazeandcave:statistics/who_needs_cars bac_obtained matches 1.. run function bc_rewards:reward/statistics/who_needs_cars
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/who_needs_cars
execute if score exp bac_settings matches -1 unless score blazeandcave:statistics/who_needs_cars bac_obtained matches 1.. run function bc_rewards:exp/statistics/who_needs_cars

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:statistics/who_needs_cars bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:statistics/who_needs_cars bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:statistics/who_needs_cars