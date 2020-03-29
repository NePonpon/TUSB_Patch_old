#残機回復してリセット
gamerule doImmediateRespawn true
execute at @a run playsound minecraft:ui.toast.challenge_complete player @p ~ ~ ~ 1 1.5
tellraw @a [{"text":"もう一度だ！"}]
scoreboard players set #Re_Spe_Lives Re_Spe_Lives 30
gamemode survival @a[tag=Re_Spe_Spectate]
kill @a[tag=Re_Spe_Spectate]
gamerule doImmediateRespawn false