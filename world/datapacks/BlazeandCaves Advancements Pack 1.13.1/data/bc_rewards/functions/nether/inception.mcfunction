execute if score challenge bac_settings matches 1 run function bc_rewards:msg/nether/inception
execute if score challenge bac_settings matches -1 unless score blazeandcave:nether/inception bac_obtained matches 1.. run function bc_rewards:msg/nether/inception

execute if score trophy bac_settings matches 1 run function bc_rewards:trophy/nether/inception
execute if score trophy bac_settings matches -1 unless score blazeandcave:nether/inception bac_obtained matches 1.. run function bc_rewards:trophy/nether/inception
execute if score reward bac_settings matches 1 run function bc_rewards:reward/nether/inception
execute if score reward bac_settings matches -1 unless score blazeandcave:nether/inception bac_obtained matches 1.. run function bc_rewards:reward/nether/inception
execute if score exp bac_settings matches 1 run function bc_rewards:exp/nether/inception
execute if score exp bac_settings matches -1 unless score blazeandcave:nether/inception bac_obtained matches 1.. run function bc_rewards:exp/nether/inception

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:nether/inception bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:nether/inception bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:nether/inception