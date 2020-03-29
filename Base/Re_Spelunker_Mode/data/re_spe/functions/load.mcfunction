scoreboard objectives add Re_Spe_Fall dummy
scoreboard objectives add Re_Spe_Energy dummy
scoreboard objectives add Re_Spe_Swim dummy
scoreboard objectives add Re_Spe_Bat dummy
scoreboard objectives add Re_Spe_Jingle dummy
scoreboard objectives add Re_Spe_G.Jingle dummy
scoreboard objectives add Re_Spe_G.Health dummy
scoreboard objectives add Re_Spe_G.Count dummy
scoreboard objectives add Re_Spe_Lives dummy
scoreboard objectives add Re_Spe_Exp1 dummy
scoreboard objectives add Re_Spe_Exp2 dummy
scoreboard objectives add Re_Spe_Exp3 dummy
scoreboard objectives add Re_Spe_Exp4 dummy
gamerule showDeathMessages false
#Gamerule1 洞窟でのエネルギー消費
scoreboard objectives add Re_Spe_Gamerule1 dummy
execute unless score #Re_Spe_Gamerule Re_Spe_Gamerule1 = #Re_Spe_Gamerule Re_Spe_Gamerule1 run scoreboard players set #Re_Spe_Gamerule Re_Spe_Gamerule1 1
#Gamerule2 オバケが来るかどうか
scoreboard objectives add Re_Spe_Gamerule2 dummy
execute unless score #Re_Spe_Gamerule Re_Spe_Gamerule2 = #Re_Spe_Gamerule Re_Spe_Gamerule2 run scoreboard players set #Re_Spe_Gamerule Re_Spe_Gamerule2 1
#Gamerule3 みんなでスペランカー
scoreboard objectives add Re_Spe_Gamerule3 dummy
execute unless score #Re_Spe_Gamerule Re_Spe_Gamerule3 = #Re_Spe_Gamerule Re_Spe_Gamerule3 run scoreboard players set #Re_Spe_Gamerule Re_Spe_Gamerule3 0
#初期残機設定
execute unless score #Re_Spe_Lives Re_Spe_Lives = #Re_Spe_Lives Re_Spe_Lives run scoreboard players set #Re_Spe_Lives Re_Spe_Lives 30