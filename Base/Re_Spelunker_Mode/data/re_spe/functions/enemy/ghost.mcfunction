#移動とパーティクル
particle minecraft:dust 0.34 0.9 0.98 1 ~ ~1.7 ~ 0.25 0.25 0.25 0 5
tp @s ^ ^ ^0.15 facing entity @p[tag=!Re_Spe_Without,tag=!Re_Spe_Death] feet

execute at @a[distance=7..40] facing entity @s eyes positioned ~ ~1.05 ~ run particle minecraft:dust 0.34 0.90 0.98 0.75 ^ ^ ^1 0 0 0 0 1

#ダメージ反応
execute as @s[tag=Re_Spe_Ghost_Hit] run data merge entity @s {PortalCooldown:20} 
execute if entity @s[tag=Re_Spe_Ghost_Hit] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0
execute if entity @s[tag=Re_Spe_Ghost_Hit] run particle minecraft:end_rod ~ ~1.7 ~ 0 0 0 0.05 5
scoreboard players add @s[tag=Re_Spe_Ghost_Hit] Re_Spe_G.Health 1
execute as @s[tag=Re_Spe_Ghost_Hit] run tag @s remove Re_Spe_Ghost_Hit

#死亡
execute at @s[scores={Re_Spe_G.Health=4..}] run particle minecraft:poof ~ ~1.5 ~ 0.25 0.5 0.25 0 25
execute at @s[scores={Re_Spe_G.Health=4..}] run playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 1 0
kill @s[scores={Re_Spe_G.Health=4..}]

#攻撃
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death,distance=..1] run function re_spe:death/ghost
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death,distance=..1] run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1 0

#顔
replaceitem entity @s[nbt=!{PortalCooldown:0}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"\"}"},SkullOwner:{Id:"65606a55-3de6-41c9-9836-f0a0dea0954e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmMyZTZiY2NjM2MzM2ZjNDk3MGJkYjg3ZTU1ODYxNzdhMGMyNGFlZTA0NWIwMzBkY2YwMGRmNDkzNDAzYTUyNSJ9fX0="}]}}}
replaceitem entity @s[nbt={PortalCooldown:0}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"\"}"},SkullOwner:{Id:"38df567a-5aea-4eb3-9b8a-b474d4b7f399",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ0OGUzNzVmMTNkMjZhNTU5ODBiMWM2YTAyMzkwMjZiNTFkMWFkMTZhOWRhOWZlOTQ4NGJjMzUyZWM0ZWQ4OSJ9fX0="}]}}} 1