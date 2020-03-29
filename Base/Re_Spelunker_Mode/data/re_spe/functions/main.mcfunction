
#おなじみの音
execute at @a[scores={Re_Spe_Jingle=0..}] run function re_spe:jingle
scoreboard players add @a[tag=Re_Spe_Died] Re_Spe_Jingle 1
tag @a[scores={Re_Spe_Jingle=49..},tag=!Re_Spe_Death] remove Re_Spe_Died
scoreboard players reset @a[scores={Re_Spe_Jingle=49..},tag=!Re_Spe_Death] Re_Spe_Jingle

#おなじみの音
execute at @a[scores={Re_Spe_G.Jingle=0..}] run function re_spe:jingle2
scoreboard players add @a[scores={Re_Spe_G.Jingle=0..}] Re_Spe_G.Jingle 1
scoreboard players reset @a[scores={Re_Spe_G.Jingle=63..},tag=!Re_Spe_Death] Re_Spe_G.Jingle

#残機モード
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 run title @s actionbar ["",{"text":"| ❤ Lives: "},{"score":{"name":"#Re_Spe_Lives","objective":"Re_Spe_Lives"}},{"text":" |"}]
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 run title @s[scores={Re_Spe_Energy=..300}] actionbar ["",{"text":"| ⛏ Energy: "},{"score":{"name":"@s","objective":"Re_Spe_Energy"}},{"text":" ❤ Lives: "},{"score":{"name":"#Re_Spe_Lives","objective":"Re_Spe_Lives"}},{"text":" |"}]
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 run title @s[scores={Re_Spe_Swim=..150,Re_Spe_Energy=..300,}] actionbar [{"text":"| ⛏ Energy: "},{"score":{"name":"@s","objective":"Re_Spe_Energy"}},{"text":" ☁ Swim: "},{"score":{"name":"@s","objective":"Re_Spe_Swim"}},{"text":" ❤ Lives: "},{"score":{"name":"#Re_Spe_Lives","objective":"Re_Spe_Lives"}},{"text":" |"}]
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 run title @s[scores={Re_Spe_Swim=..150}] actionbar [{"text":"| ☁ Swim: "},{"score":{"name":"@s","objective":"Re_Spe_Swim"}},{"text":" ❤ Lives: "},{"score":{"name":"#Re_Spe_Lives","objective":"Re_Spe_Lives"}},{"text":" |"}]

#残機切れ
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run title @s actionbar ["",{"text":"| ☠ Lives: "},{"text":" ✖ "},{"text":" |"}]
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run title @s[scores={Re_Spe_Energy=..300}] actionbar ["",{"text":"| ⛏ Energy: "},{"score":{"name":"@s","objective":"Re_Spe_Energy"}},{"text":" ☠ Lives: "},{"text":" ✖ "},{"text":" |"}]
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run title @s[scores={Re_Spe_Swim=..150,Re_Spe_Energy=..300,}] actionbar [{"text":"| ⛏ Energy: "},{"score":{"name":"@s","objective":"Re_Spe_Energy"}},{"text":" ☁ Swim: "},{"score":{"name":"@s","objective":"Re_Spe_Swim"}},{"text":" ☠ Lives: "},{"text":" ✖ "},{"text":" |"}]
execute as @a if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 1 if score #Re_Spe_Lives Re_Spe_Lives matches 0 run title @s[scores={Re_Spe_Swim=..150}] actionbar [{"text":"| ☁ Swim: "},{"score":{"name":"@s","objective":"Re_Spe_Swim"}},{"text":" ☠ Lives: "},{"text":" ✖ "},{"text":" |"}]

#残機0から増やした場合

#生死判定
tag @a[nbt=!{Health:0.0f}] remove Re_Spe_Death
tag @a[nbt={Health:0.0f}] add Re_Spe_Death

#クリエとスペクテイターは除外
tag @a[gamemode=creative] add Re_Spe_Without
tag @a[gamemode=spectator] add Re_Spe_Without
tag @a[gamemode=!spectator,gamemode=!creative] remove Re_Spe_Without

#足首をくじく
execute as @a[tag=!Re_Spe_NoFall,tag=!Re_Spe_Without] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] store result score @s Re_Spe_Fall run data get entity @s FallDistance 100
execute as @a[tag=!Re_Spe_Death,tag=!Re_Spe_Without,scores={Re_Spe_Fall=159..}] at @s run function re_spe:death/fall

#洞窟エネルギー回復
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule1 matches 1 if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 0 as @a[scores={Re_Spe_Energy=..300}] run title @s actionbar ["",{"text":"| ⛏ Energy: "},{"score":{"name":"@s","objective":"Re_Spe_Energy"}},{"text":" |"}]
execute as @a[tag=!Re_Spe_InCave,scores={Re_Spe_Energy=..300}] run scoreboard players add @s Re_Spe_Energy 1
scoreboard players set @a[tag=Re_Spe_Died] Re_Spe_Energy 301

#オーバーしたら戻す
execute as @a[scores={Re_Spe_Energy=301..}] run scoreboard players set @s Re_Spe_Energy 301

#スイムゲージ
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 0 as @a[scores={Re_Spe_Swim=..150}] run title @s actionbar ["",{"text":"| ☁ Swim: "},{"score":{"name":"@s","objective":"Re_Spe_Swim"}},{"text":" |"}]
#エネルギーとスイムゲージ
execute if score #Re_Spe_Gamerule Re_Spe_Gamerule3 matches 0 as @a[scores={Re_Spe_Swim=..150,Re_Spe_Energy=..300}] run title @s actionbar [{"text":"| ⛏ Energy: "},{"score":{"name":"@s","objective":"Re_Spe_Energy"}},{"text":" ☁ Swim: "},{"score":{"name":"@s","objective":"Re_Spe_Swim"}},{"text":" |"}]
execute as @a unless entity @s[scores={Re_Spe_Swim=151..}] run scoreboard players add @s Re_Spe_Swim 1
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death,scores={Re_Spe_Swim=..0}] at @s run function re_spe:death/swim_energy
execute as @a[nbt={OnGround:0b}] unless entity @s[scores={Re_Spe_Swim=..0}] run scoreboard players remove @s[tag=Re_Spe_Energy_Swim] Re_Spe_Swim 2
tag @a[tag=Re_Spe_Energy_Swim] remove Re_Spe_Energy_Swim

#目に水が入る
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death,nbt=!{Air:300s}] at @s run function re_spe:death/drowned

#悪いものを食う
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death,nbt={ActiveEffects:[{Id:17b,Duration:1}]}] at @s run function re_spe:death/bad_food

#動物に噛みつかれる
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death] at @s positioned ~-0.5 ~0.5 ~-0.5 if entity @e[type=#re_spe:animals,type=!wolf,type=!cat,dx=0,nbt=!{Saddle:1b}] run function re_spe:death/animal

#水生生物に激突される
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death] at @s positioned ~-0.5 ~0.5 ~-0.5 if entity @e[type=#re_spe:fishes,dx=0] run function re_spe:death/fishes

#猫と狼はOwnerUUIDがあるので特殊
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death] at @s positioned ~-0.5 ~0.5 ~-0.5 if entity @e[type=#re_spe:animals2,dx=0,nbt={OwnerUUID:""}] run function re_spe:death/animal

#ボートに乗って高いところから落ちると尻が痛い
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death] at @s if entity @e[type=boat,distance=..0.5,scores={Re_Spe_Fall=400..},nbt={OnGround:1b}] run function re_spe:death/boat_fall_1
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death] at @s if entity @e[type=boat,distance=..0.5,scores={Re_Spe_Fall=400..}] if block ~ ~ ~ water run function re_spe:death/boat_fall_2
execute as @e[type=boat] at @s if entity @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death,distance=..0.5] store result score @s Re_Spe_Fall run data get entity @s FallDistance 100

#1.14.4以前のために、乗る動物から降りると死なない
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death] at @s if entity @e[type=#re_spe:animals3,distance=..1] run tag @s add Re_Spe_NoFall
tag @a[tag=Re_Spe_NoFall,nbt={OnGround:1b}] remove Re_Spe_NoFall

#きょうあくコウモリ
execute as @e[type=bat] at @s if entity @a[distance=..16] run function re_spe:enemy/bat

#コウモリのフン
execute as @e[tag=Re_Spe_BatPoop] at @s run function re_spe:enemy/bat_poop

#恐ろしいオバケ
execute as @e[tag=Re_Spe_Ghost] at @s if entity @a[distance=..60] run function re_spe:enemy/ghost
execute as @e[tag=Re_Spe_Ghost] at @s unless entity @a[distance=..70] run kill @s

#頭にアイテム直撃
execute as @e[type=item,tag=!Re_Spe_BatPoop,tag=!Re_Spe_Blocked,nbt={OnGround:0b}] at @s if entity @a[distance=..6] store result score @s Re_Spe_Fall run data get entity @s FallDistance 100
execute as @a[tag=!Re_Spe_Without,tag=!Re_Spe_Death,tag=!Re_Spe_Blocked] at @s positioned ~ ~3 ~ if entity @e[type=item,distance=..1,scores={Re_Spe_Fall=180..}] run function re_spe:death/item_hit

#EXPチェック
execute as @a[scores={Re_Spe_Energy=..300}] run function re_spe:energy/exp_get