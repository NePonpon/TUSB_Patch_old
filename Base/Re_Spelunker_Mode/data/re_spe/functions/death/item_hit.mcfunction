execute if entity @s[nbt=!{Inventory:[{Slot:103b}]}] run tellraw @a ["",{"selector":"@s"},{"text":"は"},{"selector":"@e[type=item,limit=1,sort=nearest]"},{"text":"の角に頭をぶつけたので帰った。"}]
execute if entity @s[nbt=!{Inventory:[{Slot:103b}]}] run scoreboard players reset @s Re_Spe_Jingle
execute if entity @s[nbt=!{Inventory:[{Slot:103b}]}] run tag @s add Re_Spe_Died
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] run tag @e[type=item,limit=1,sort=nearest] add Re_Sple_Blocked
playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 1
particle crit ~ ~-1.5 ~ 0 0 0 0.5 5
execute if entity @s[nbt=!{Inventory:[{Slot:103b}]}] run execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は本当に死んでしまった！"}]
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run gamemode spectator @s
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run tag @s add Re_Spe_Spectate
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 unless score #Re_Spe_Lives Re_Spe_Lives matches 0 run scoreboard players remove #Re_Spe_Lives Re_Spe_Lives 1
execute if entity @s[nbt=!{Inventory:[{Slot:103b}]}] run kill @s