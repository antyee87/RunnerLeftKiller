execute if score @s shopbuy matches 100.. run tag @s add shop_dialog_menu
execute if entity @s[tag=shop_dialog_menu] run scoreboard players remove @s shopbuy 100

scoreboard players set buy shop 0
execute as @s[scores={shopbuy=1,shop=5..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run clear @s minecraft:arrow 5
execute if score buy shop matches 1 run give @s potion[potion_contents={potion:"minecraft:healing"}]
#買東西
scoreboard players set buy shop 0
execute as @s[scores={shopbuy=2,shop=10..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run clear @s minecraft:arrow 10
execute if score buy shop matches 1 run give @s minecraft:netherite_sword[damage=2026,enchantments={"minecraft:sharpness":40},custom_name=[{"text":""},{"text":"強威劍","color":"gold","bold":true}],lore=["感染剋星","必殺殭屍。"],custom_data={supersword:1b}]
#買東西
scoreboard players set buy shop 0
execute as @s[scores={shopbuy=3,shop=10..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run clear @s minecraft:arrow 10
execute if score buy shop matches 1 run give @s minecraft:netherite_boots[damage=480,custom_name=[{"text":""},{"text":"急速靴","color":"gold","bold":true}],lore=["又快又急","腳底抹油。"],attribute_modifiers=[{type:"movement_speed",slot:"feet",amount:0.01d,operation:"add_value",id:"3d01d3bd-3bc0-738f-3c7d-2fdc42252b63"}]]
#買東西
scoreboard players set buy shop 0
execute as @s[scores={shopbuy=4,shop=30..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run clear @s minecraft:arrow 30
execute if score buy shop matches 1 run give @s minecraft:golden_boots[damage=81,custom_name=[{"text":""},{"text":"抗退之靴","color":"gold","bold":true}],lore=["不被擊退","小心摸腳。"],attribute_modifiers=[{type:"knockback_resistance",slot:"feet",amount:100,operation:"add_value",id:"3d01d3bd-3bc0-738f-3c7d-2fdc42252b63"}]]
#買東西
scoreboard players set buy shop 0
execute as @s[scores={shopbuy=5,shop=30..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run clear @s minecraft:arrow 30
execute if score buy shop matches 1 run give @s minecraft:diamond_sword[damage=1560,enchantments={"minecraft:luck_of_the_sea":10},custom_name=[{"text":""},{"text":"凍結劍","color":"gold","bold":true}],lore=["殺手動不了","但你可以。"],custom_data={stopmove:1b}]
#買東西

execute if entity @s[tag=shop_dialog_menu] run scoreboard players add @s shopbuy 100
tag @s remove shop_dialog_menu
