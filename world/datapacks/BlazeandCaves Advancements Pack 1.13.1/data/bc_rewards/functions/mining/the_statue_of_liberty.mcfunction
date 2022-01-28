execute if score goal bac_settings matches 1 run function bc_rewards:msg/mining/the_statue_of_liberty
execute if score goal bac_settings matches -1 unless score blazeandcave:mining/the_statue_of_liberty bac_obtained matches 1.. run function bc_rewards:msg/mining/the_statue_of_liberty

execute if score trophy bac_settings matches 1 run function bc_rewards:trophy/mining/the_statue_of_liberty
execute if score trophy bac_settings matches -1 unless score blazeandcave:mining/the_statue_of_liberty bac_obtained matches 1.. run function bc_rewards:trophy/mining/the_statue_of_liberty
execute if score reward bac_settings matches 1 run function bc_rewards:reward/mining/the_statue_of_liberty
execute if score reward bac_settings matches -1 unless score blazeandcave:mining/the_statue_of_liberty bac_obtained matches 1.. run function bc_rewards:reward/mining/the_statue_of_liberty
execute if score exp bac_settings matches 1 run function bc_rewards:exp/mining/the_statue_of_liberty
execute if score exp bac_settings matches -1 unless score blazeandcave:mining/the_statue_of_liberty bac_obtained matches 1.. run function bc_rewards:exp/mining/the_statue_of_liberty

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:mining/the_statue_of_liberty bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:mining/the_statue_of_liberty bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:mining/the_statue_of_liberty