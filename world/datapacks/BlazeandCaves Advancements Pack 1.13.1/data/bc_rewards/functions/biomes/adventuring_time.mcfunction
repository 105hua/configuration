execute if score challenge bac_settings matches 1 run function bc_rewards:msg/biomes/adventuring_time
execute if score challenge bac_settings matches -1 unless score minecraft:adventure/adventuring_time bac_obtained matches 1.. run function bc_rewards:msg/biomes/adventuring_time
execute if score reward bac_settings matches 1 run function bc_rewards:reward/biomes/adventuring_time
execute if score reward bac_settings matches -1 unless score minecraft:adventure/adventuring_time bac_obtained matches 1.. run function bc_rewards:reward/biomes/adventuring_time
execute if score exp bac_settings matches 1 run function bc_rewards:exp/biomes/adventuring_time
execute if score exp bac_settings matches -1 unless score minecraft:adventure/adventuring_time bac_obtained matches 1.. run function bc_rewards:exp/biomes/adventuring_time

scoreboard players add @s bac_advancements 1
execute unless score minecraft:adventure/adventuring_time bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add minecraft:adventure/adventuring_time bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only minecraft:adventure/adventuring_time