tellraw @a ["",{"selector":"@s"},{"text":"は着地の衝撃を受けたので帰った。"}]
scoreboard players reset @s Re_Spe_Jingle
tag @s add Re_Spe_Died
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 1.5
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は本当に死んでしまった！"}]
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run gamemode spectator @s
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run tag @s add Re_Spe_Spectate
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 unless score #Re_Spe_Lives Re_Spe_Lives matches 0 run scoreboard players remove #Re_Spe_Lives Re_Spe_Lives 1
kill @s


