#初期設定は0
scoreboard players add #Re_Spe_Gamerule Re_Spe_Gamerule3 1
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 2 run scoreboard players set #Re_Spe_Gamerule Re_Spe_Gamerule3 0

execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 0 run tellraw @s [{"text":"\n[Re:Spelunker Mode]"},{"text":"\nみんなでスペランカーを 無効 にしました。\nLife Share Mode: False\n"}]
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 run tellraw @s [{"text":"\n[Re:Spelunker Mode]"},{"text":"\nみんなでスペランカーを 有効 にしました。\nLife Share Mode: True\n"}]