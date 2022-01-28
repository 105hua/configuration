execute if score task bac_settings matches 1 run function bc_rewards:msg/potion/medic
execute if score task bac_settings matches -1 unless score blazeandcave:potion/medic bac_obtained matches 1.. run function bc_rewards:msg/potion/medic
execute if score reward bac_settings matches 1 run function bc_rewards:reward/potion/medic
execute if score reward bac_settings matches -1 unless score blazeandcave:potion/medic bac_obtained matches 1.. run function bc_rewards:reward/potion/medic
execute if score exp bac_settings matches 1 run function bc_rewards:exp/potion/medic
execute if score exp bac_settings matches -1 unless score blazeandcave:potion/medic bac_obtained matches 1.. run function bc_rewards:exp/potion/medic

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:potion/medic bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:potion/medic bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:potion/medic