execute if score task bac_settings matches 1 run function bc_rewards:msg/mining/steals_on_wheels
execute if score task bac_settings matches -1 unless score blazeandcave:mining/steals_on_wheels bac_obtained matches 1.. run function bc_rewards:msg/mining/steals_on_wheels
execute if score reward bac_settings matches 1 run function bc_rewards:reward/mining/steals_on_wheels
execute if score reward bac_settings matches -1 unless score blazeandcave:mining/steals_on_wheels bac_obtained matches 1.. run function bc_rewards:reward/mining/steals_on_wheels
execute if score exp bac_settings matches 1 run function bc_rewards:exp/mining/steals_on_wheels
execute if score exp bac_settings matches -1 unless score blazeandcave:mining/steals_on_wheels bac_obtained matches 1.. run function bc_rewards:exp/mining/steals_on_wheels

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:mining/steals_on_wheels bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:mining/steals_on_wheels bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:mining/steals_on_wheels