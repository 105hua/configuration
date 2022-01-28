execute if score task bac_settings matches 1 run function bc_rewards:msg/animal/repopulation
execute if score task bac_settings matches -1 unless score minecraft:husbandry/breed_an_animal bac_obtained matches 1.. run function bc_rewards:msg/animal/repopulation
execute if score reward bac_settings matches 1 run function bc_rewards:reward/animal/repopulation
execute if score reward bac_settings matches -1 unless score minecraft:husbandry/breed_an_animal bac_obtained matches 1.. run function bc_rewards:reward/animal/repopulation
execute if score exp bac_settings matches 1 run function bc_rewards:exp/animal/repopulation
execute if score exp bac_settings matches -1 unless score minecraft:husbandry/breed_an_animal bac_obtained matches 1.. run function bc_rewards:exp/animal/repopulation

scoreboard players add @s bac_advancements 1
execute unless score minecraft:husbandry/breed_an_animal bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add minecraft:husbandry/breed_an_animal bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only minecraft:husbandry/breed_an_animal