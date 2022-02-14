execute if score task bac_settings matches 1 run function bc_rewards:msg/mining/wax_off
execute if score task bac_settings matches -1 unless score minecraft:husbandry/wax_off bac_obtained matches 1.. run function bc_rewards:msg/mining/wax_off
execute if score reward bac_settings matches 1 run function bc_rewards:reward/mining/wax_off
execute if score reward bac_settings matches -1 unless score minecraft:husbandry/wax_off bac_obtained matches 1.. run function bc_rewards:reward/mining/wax_off
execute if score exp bac_settings matches 1 run function bc_rewards:exp/mining/wax_off
execute if score exp bac_settings matches -1 unless score minecraft:husbandry/wax_off bac_obtained matches 1.. run function bc_rewards:exp/mining/wax_off

scoreboard players add @s bac_advancements 1
execute unless score minecraft:husbandry/wax_off bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add minecraft:husbandry/wax_off bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only minecraft:husbandry/wax_off