#コウモリ
scoreboard players add @s Re_Spe_Bat 1
execute if entity @s[scores={Re_Spe_Bat=40}] run summon item ~ ~ ~ {Age:5900s,PickupDelay:9999s,Tags:["Re_Spe_BatPoop"],Item:{id:"minecraft:dark_oak_button",Count:1b}}
scoreboard players set @s[scores={Re_Spe_Bat=40}] Re_Spe_Bat 0