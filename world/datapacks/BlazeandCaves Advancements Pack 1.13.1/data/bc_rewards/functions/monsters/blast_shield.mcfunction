execute if score task bac_settings matches 1 run function bc_rewards:msg/monsters/blast_shield
execute if score task bac_settings matches -1 unless score blazeandcave:monsters/blast_shield bac_obtained matches 1.. run function bc_rewards:msg/monsters/blast_shield
execute if score reward bac_settings matches 1 run function bc_rewards:reward/monsters/blast_shield
execute if score reward bac_settings matches -1 unless score blazeandcave:monsters/blast_shield bac_obtained matches 1.. run function bc_rewards:reward/monsters/blast_shield
execute if score exp bac_settings matches 1 run function bc_rewards:exp/monsters/blast_shield
execute if score exp bac_settings matches -1 unless score blazeandcave:monsters/blast_shield bac_obtained matches 1.. run function bc_rewards:exp/monsters/blast_shield

scoreboard players add @s bac_advancements 1
execute unless score blazeandcave:monsters/blast_shield bac_obtained matches 1.. run scoreboard players add @s bac_advfirst 1
scoreboard players add blazeandcave:monsters/blast_shield bac_obtained 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:monsters/blast_shield