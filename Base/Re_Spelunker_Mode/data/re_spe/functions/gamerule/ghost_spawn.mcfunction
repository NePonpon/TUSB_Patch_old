#初期設定は1
scoreboard players add #Re_Spe_Gamerule Re_Spe_Gamerule2 1
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule2 matches 2 run scoreboard players set #Re_Spe_Gamerule Re_Spe_Gamerule2 0

execute if score #Re_Spe_Gamerule Re_Spe_Gamerule2 matches 0 run tellraw @s [{"text":"\n[Re:Spelunker Mode]"},{"text":"\nゴーストの出現を 無効 にしました。\nGhost spawn: False\n"}]
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule2 matches 1 run tellraw @s [{"text":"\n[Re:Spelunker Mode]"},{"text":"\nゴーストの出現を 有効 にしました。\nGhost spawn: True\n"}]