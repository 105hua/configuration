execute if score task bac_settings matches 1 run function bc_rewards:msg/animal/salmonella_poisoning
execute if score task bac_settings matches -1 unless score blazeandcave:animal/salmonella_poisoning bac_obtained matches 1.. run function bc_rewards:msg/animal/salmonella_poisoning

execute if score reward bac_settings matches 1 run function bc_rewards:reward/animal/salmonella_poisoning
execute if score reward bac_settings matches -1 unless score blazeandcave:animal/salmonella_poisoning bac_obtained matches 1.. run function bc_rewards:reward/animal/salmonella_poisoning
execute if score exp bac_settings matches 1 run function bc_rewards:exp/animal/salmonella_poisoning
execute if score exp bac_settings matches -1 unless score blazeandcave:animal/salmonella_poisoning bac_obtained matches 1.. run function bc_rewards:exp/animal/salmonella_poisoning

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:animal/salmonella_poisoning bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:animal/salmonella_poisoning bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:animal/salmonella_poisoning