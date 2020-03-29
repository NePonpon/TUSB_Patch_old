#初期設定は1
scoreboard players add #Re_Spe_Gamerule Re_Spe_Gamerule1 1
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 2 run scoreboard players set #Re_Spe_Gamerule Re_Spe_Gamerule1 0

execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 0 run tellraw @s [{"text":"\n[Re:Spelunker Mode]"},{"text":"\n洞窟でのエネルギー消費を 無効 にしました。\nConsume energy in cave: False\n"}]
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 1 run tellraw @s [{"text":"\n[Re:Spelunker Mode]"},{"text":"\n洞窟でのエネルギー消費を 有効 にしました。\nConsume energy in cave: True\n"}]