execute if score task bac_settings matches 1 run function bc_rewards:msg/monsters/trampoline
execute if score task bac_settings matches -1 unless score blazeandcave:monsters/trampoline bac_obtained matches 1.. run function bc_rewards:msg/monsters/trampoline

execute if score reward bac_settings matches 1 run function bc_rewards:reward/monsters/trampoline
execute if score reward bac_settings matches -1 unless score blazeandcave:monsters/trampoline bac_obtained matches 1.. run function bc_rewards:reward/monsters/trampoline
execute if score exp bac_settings matches 1 run function bc_rewards:exp/monsters/trampoline
execute if score exp bac_settings matches -1 unless score blazeandcave:monsters/trampoline bac_obtained matches 1.. run function bc_rewards:exp/monsters/trampoline

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:monsters/trampoline bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:monsters/trampoline bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:monsters/trampoline