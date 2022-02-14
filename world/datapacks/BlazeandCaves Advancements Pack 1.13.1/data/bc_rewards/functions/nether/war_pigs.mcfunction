execute if score task bac_settings matches 1 run function bc_rewards:msg/nether/war_pigs
execute if score task bac_settings matches -1 unless score minecraft:nether/loot_bastion bac_obtained matches 1.. run function bc_rewards:msg/nether/war_pigs
execute if score reward bac_settings matches 1 run function bc_rewards:reward/nether/war_pigs
execute if score reward bac_settings matches -1 unless score minecraft:nether/loot_bastion bac_obtained matches 1.. run function bc_rewards:reward/nether/war_pigs
execute if score exp bac_settings matches 1 run function bc_rewards:exp/nether/war_pigs
execute if score exp bac_settings matches -1 unless score minecraft:nether/loot_bastion bac_obtained matches 1.. run function bc_rewards:exp/nether/war_pigs

scoreboard players add @s bac_advancements 1
execute unless score minecraft:nether/loot_bastion bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add minecraft:nether/loot_bastion bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only minecraft:nether/loot_bastion