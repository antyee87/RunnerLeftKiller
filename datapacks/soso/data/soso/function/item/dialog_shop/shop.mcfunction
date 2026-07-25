execute if score @s shopbuy matches -1 run dialog clear @s

execute if score @s[team=Runner] shopbuy matches 1.. run function soso:item/dialog_shop/runner
execute if score @s[team=Killer] shopbuy matches 1.. run function soso:item/dialog_shop/killer
scoreboard players set @s shopbuy 0
