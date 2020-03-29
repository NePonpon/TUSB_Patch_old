particle minecraft:dust 0.1 0.1 0.1 0.5 ~ ~ ~ 0 0 0 0 1
execute at @e[tag=Re_Spe_BatPoop] positioned ~-0.5 ~0.5 ~-0.5 as @a[dx=0,tag=!Re_Spe_Without,tag=!Re_Spe_Death] run function re_spe:death/bat_poop
execute as @e[tag=Re_Spe_BatPoop,sort=nearest,limit=1] positioned ~-0.5 ~0.5 ~-0.5 as @a[dx=0,tag=!Re_Spe_Without,tag=!Re_Spe_Death] run kill @s
kill @e[tag=Re_Spe_BatPoop,nbt={OnGround:1b}]