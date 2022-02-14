execute if score goal bac_settings matches 1 run function bc_rewards:msg/farming/the_meloncholy_dane
execute if score goal bac_settings matches -1 unless score blazeandcave:farming/the_meloncholy_dane bac_obtained matches 1.. run function bc_rewards:msg/farming/the_meloncholy_dane
execute if score reward bac_settings matches 1 run function bc_rewards:reward/farming/the_meloncholy_dane
execute if score reward bac_settings matches -1 unless score blazeandcave:farming/the_meloncholy_dane bac_obtained matches 1.. run function bc_rewards:reward/farming/the_meloncholy_dane
execute if score exp bac_settings matches 1 run function bc_rewards:exp/farming/the_meloncholy_dane
execute if score exp bac_settings matches -1 unless score blazeandcave:farming/the_meloncholy_dane bac_obtained matches 1.. run function bc_rewards:exp/farming/the_meloncholy_dane

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:farming/the_meloncholy_dane bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:farming/the_meloncholy_dane bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:farming/the_meloncholy_dane