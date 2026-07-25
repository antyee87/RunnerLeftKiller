execute at @s run playsound minecraft:ui.button.click block @s
execute as @s[team=Runner] store result score @s shop run clear @s minecraft:arrow 0
execute if entity @s[team=Runner] run function soso:item/shop/chat_menu/runner
execute if entity @s[team=Killer] run function soso:item/shop/chat_menu/killer
