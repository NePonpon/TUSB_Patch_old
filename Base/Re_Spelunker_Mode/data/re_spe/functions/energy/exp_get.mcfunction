execute store result score @s Re_Spe_Exp1 run data get entity @s XpP 1000
execute unless score @s Re_Spe_Exp1 = @s Re_Spe_Exp2 run scoreboard players add @s Re_Spe_Energy 2
execute store result score @s Re_Spe_Exp2 run data get entity @s XpP 1000

execute store result score @s Re_Spe_Exp3 run data get entity @s XpLevel 1
execute unless score @s Re_Spe_Exp3 = @s Re_Spe_Exp4 run scoreboard players set @s Re_Spe_Energy 300
execute store result score @s Re_Spe_Exp4 run data get entity @s XpLevel 1