#なんらかのダメージ
tellraw @a ["",{"selector":"@s"},{"text":"は恐ろしいゴーストに襲われたので帰った。"}]
execute if entity @a[tag=!Re_Spe_Without,distance=..2] run particle minecraft:poof ~ ~1.5 ~ 0.25 0.5 0.25 0 25
kill @e[sort=nearest,limit=1,tag=Re_Spe_Ghost]
scoreboard players reset @s Re_Spe_Jingle
tag @s add Re_Spe_Died
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は本当に死んでしまった！"}]
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run gamemode spectator @s
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run tag @s add Re_Spe_Spectate
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 unless score #Re_Spe_Lives Re_Spe_Lives matches 0 run scoreboard players remove #Re_Spe_Lives Re_Spe_Lives 1
kill @s

