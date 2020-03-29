execute if block ~ ~ ~ air if entity @a[distance=..2,tag=Re_Spe_InCave] run playsound minecraft:block.wooden_button.click_off player @p ~ ~ ~ 1 1
execute if block ~ ~ ~ air run tag @a[distance=..2,tag=Re_Spe_InCave] remove Re_Spe_InCave
