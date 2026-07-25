execute if entity @s[team=Runner] run function soso:item/shop/runner
execute if entity @s[team=Killer] run function soso:item/shop/killer
execute if score @s shopbuy matches -1 run dialog clear @s
# execute if entity @s[scores={shopbuy=1..99}] run function soso:item/shop/chat_menu/show_menu
execute if entity @s[scores={shopbuy=100..199}] run function soso:item/shop/dialog_menu/show_menu
scoreboard players set @s shopbuy 0
