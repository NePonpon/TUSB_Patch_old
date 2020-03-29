execute unless score @s Re_Spe_Swim = @s Re_Spe_Swim run scoreboard players set @s Re_Spe_Swim 100
execute unless entity @e[type=boat,distance=..0.5] run tag @s[tag=!Re_Spe_Death,nbt=!{ActiveEffects:[{Id:13b}]}] add Re_Spe_Energy_Swim
advancement revoke @s only re_spe:swim
