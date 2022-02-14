execute if score goal bac_settings matches 1 run function bc_rewards:msg/nether/when_piglins_fly
execute if score goal bac_settings matches -1 unless score blazeandcave:nether/when_piglins_fly bac_obtained matches 1.. run function bc_rewards:msg/nether/when_piglins_fly
execute if score reward bac_settings matches 1 run function bc_rewards:reward/nether/when_piglins_fly
execute if score reward bac_settings matches -1 unless score blazeandcave:nether/when_piglins_fly bac_obtained matches 1.. run function bc_rewards:reward/nether/when_piglins_fly
execute if score exp bac_settings matches 1 run function bc_rewards:exp/nether/when_piglins_fly
execute if score exp bac_settings matches -1 unless score blazeandcave:nether/when_piglins_fly bac_obtained matches 1.. run function bc_rewards:exp/nether/when_piglins_fly

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:nether/when_piglins_fly bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:nether/when_piglins_fly bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:nether/when_piglins_fly