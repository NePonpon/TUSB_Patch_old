#これの実行時点でスコアが0なら死ぬ
execute if entity @s[scores={Re_Spe_Energy=..0}] run function re_spe:death/cave_energy
#スコア設定
execute unless score @s Re_Spe_Energy = @s Re_Spe_Energy run scoreboard players set @s Re_Spe_Energy 300
#もし洞窟内ならエネルギー減少
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 1 run scoreboard players remove @s[tag=Re_Spe_InCave,tag=!Re_Spe_Without,tag=!Re_Spe_Death] Re_Spe_Energy 1
#おばけカウント
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule2 matches 1 run scoreboard players add @s[tag=Re_Spe_InCave,tag=!Re_Spe_Without,tag=!Re_Spe_Death] Re_Spe_G.Count 1
execute if entity @s[scores={Re_Spe_G.Count=180..}] run function re_spe:enemy/ghost_coming
scoreboard players reset @s[scores={Re_Spe_G.Count=180..}] Re_Spe_G.Count
#チェッカー召喚
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 1 if entity @s[tag=!Re_Spe_InCave,tag=!Re_Spe_Without,tag=!Re_Spe_Death] if block ~ ~ ~ cave_air run playsound minecraft:block.wooden_button.click_off player @s ~ ~ ~ 1 1
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 1 unless block ~ ~ ~ air run tag @s[tag=Re_Spe_InCave,tag=!Re_Spe_Without,tag=!Re_Spe_Death] add Re_Spe_InCave
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 1 if block ~ ~ ~ cave_air run tag @s[tag=!Re_Spe_InCave,tag=!Re_Spe_Without,tag=!Re_Spe_Death] add Re_Spe_InCave
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:3,Tags:["Re_Spe_C.Checker"]}
spreadplayers ~ ~ 0 1 false @e[tag=Re_Spe_C.Checker,limit=1,sort=nearest]
execute as @e[tag=Re_Spe_C.Checker,limit=1,sort=nearest] at @s run function re_spe:energy/cave_check_2
#
advancement revoke @s only re_spe:cave_check