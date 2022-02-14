execute if score goal bac_settings matches 1 run function bc_rewards:msg/animal/colorful_cavalry
execute if score goal bac_settings matches -1 unless score blazeandcave:animal/colorful_cavalry bac_obtained matches 1.. run function bc_rewards:msg/animal/colorful_cavalry
execute if score reward bac_settings matches 1 run function bc_rewards:reward/animal/colorful_cavalry
execute if score reward bac_settings matches -1 unless score blazeandcave:animal/colorful_cavalry bac_obtained matches 1.. run function bc_rewards:reward/animal/colorful_cavalry
execute if score exp bac_settings matches 1 run function bc_rewards:exp/animal/colorful_cavalry
execute if score exp bac_settings matches -1 unless score blazeandcave:animal/colorful_cavalry bac_obtained matches 1.. run function bc_rewards:exp/animal/colorful_cavalry

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:animal/colorful_cavalry bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:animal/colorful_cavalry bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:animal/colorful_cavalry