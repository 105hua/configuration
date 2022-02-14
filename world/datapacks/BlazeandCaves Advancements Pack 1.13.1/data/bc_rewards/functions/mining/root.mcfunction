tellraw @s {"color":"gray","italic":"true","translate":"You have unlocked the root of the Mining tab"}
execute if score reward bac_settings matches 1 run function bc_rewards:reward/mining/root
execute if score reward bac_settings matches -1 unless score blazeandcave:mining/root bac_obtained matches 1.. run function bc_rewards:reward/mining/root
execute if score exp bac_settings matches 1 run function bc_rewards:exp/mining/root
execute if score exp bac_settings matches -1 unless score blazeandcave:mining/root bac_obtained matches 1.. run function bc_rewards:exp/mining/root

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:mining/root bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:mining/root bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:mining/root