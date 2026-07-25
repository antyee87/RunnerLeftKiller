execute as @s[team=Runner] store result score @s shop run clear @s minecraft:arrow 0
execute store result storage soso:shop shop int 1 run scoreboard players get @s shop
execute if entity @s[team=Runner] run function soso:item/shop/dialog_menu/runner with storage soso:shop
execute if entity @s[team=Killer] run function soso:item/shop/dialog_menu/killer with storage soso:shop
