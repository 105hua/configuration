execute if score challenge bac_settings matches 1 run function bc_rewards:msg/weaponry/king_of_the_sea
execute if score challenge bac_settings matches -1 unless score blazeandcave:weaponry/king_of_the_sea bac_obtained matches 1.. run function bc_rewards:msg/weaponry/king_of_the_sea
execute if score reward bac_settings matches 1 run function bc_rewards:reward/weaponry/king_of_the_sea
execute if score reward bac_settings matches -1 unless score blazeandcave:weaponry/king_of_the_sea bac_obtained matches 1.. run function bc_rewards:reward/weaponry/king_of_the_sea
execute if score exp bac_settings matches 1 run function bc_rewards:exp/weaponry/king_of_the_sea
execute if score exp bac_settings matches -1 unless score blazeandcave:weaponry/king_of_the_sea bac_obtained matches 1.. run function bc_rewards:exp/weaponry/king_of_the_sea

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:weaponry/king_of_the_sea bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:weaponry/king_of_the_sea bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:weaponry/king_of_the_sea