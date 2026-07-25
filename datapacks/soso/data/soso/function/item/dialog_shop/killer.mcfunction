scoreboard players set buy shop 0
tellraw @s[scores={shopbuy=0,shop=20},team=Killer] [{"text":"你持有的貨幣已經足夠購買","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 2"}},{"text":"《加速藥水》：","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger shopbuy set 2"}},{"text":"20元，90秒加速II。","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 2"}}]
execute as @s[scores={shopbuy=2,shop=20..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run scoreboard players remove @s shop 20
execute if score buy shop matches 1 run give @s potion[potion_contents={potion:"minecraft:strong_swiftness"}]
#買東西
scoreboard players set buy shop 0
tellraw @s[scores={shopbuy=0,shop=30},team=Killer] [{"text":"你持有的貨幣已經足夠購買","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 3"}},{"text":"《抗退靴》：","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger shopbuy set 3"}},{"text":"30元，5耐久。","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 3"}}]
execute as @s[scores={shopbuy=3,shop=30..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run scoreboard players remove @s shop 30
execute if score buy shop matches 1 run give @s minecraft:golden_boots[damage=88,custom_name=[{"text":""},{"text":"抗退之靴","color":"gold","bold":true}],lore=["怒火爆氣","果敢前行。"],attribute_modifiers=[{type:"knockback_resistance",slot:"feet",amount:100,operation:"add_value",id:"3d01d3bd-3bc0-738f-3c7d-2fdc42252b63"}]]
#買東西
scoreboard players set buy shop 0
tellraw @s[scores={shopbuy=0,shop=50},team=Killer] [{"text":"你持有的貨幣已經足夠購買","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 4"}},{"text":"《殺戮劍》：","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger shopbuy set 4"}},{"text":"50元，鋒利1000，1耐久。","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 4"}}]
execute as @s[scores={shopbuy=4,shop=50..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run scoreboard players remove @s shop 50
execute if score buy shop matches 1 run give @s minecraft:netherite_sword[damage=2030,enchantments={"minecraft:sharpness":255},custom_name=[{"text":""},{"text":"殺戮劍","color":"gold","bold":true}],lore=["逃亡必死","情劍難留。"]]
#買東西
scoreboard players set buy shop 0
tellraw @s[scores={shopbuy=0,shop=50},team=Killer] [{"text":"你持有的貨幣已經足夠購買","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 5"}},{"text":"《殺手之弓》：","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger shopbuy set 5"}},{"text":"50元，附贈箭矢，1耐久。","color":"aqua","click_event":{"action":"run_command","command":"/trigger shopbuy set 5"}}]
execute as @s[scores={shopbuy=5,shop=50..}] run scoreboard players set buy shop 1
execute if score buy shop matches 1 run scoreboard players remove @s shop 50
execute if score buy shop matches 1 run give @s minecraft:bow[damage=384,enchantments={"minecraft:power":3},custom_name=[{"text":""},{"text":"殺手之弓","color":"gold","bold":true}],lore=["怒火爆氣","殲滅前敵。"]]
execute if score buy shop matches 1 run give @s minecraft:arrow[enchantments={"minecraft:power":255},custom_name=[{"text":""},{"text":"殺手之矢","color":"gold","bold":true}],lore=["矢之中敵","絕體絕命。"]]
#買東西

execute if score @s shopbuy matches 1.. store result storage soso:shop shop int 1 run scoreboard players get @s shop
execute as @s[scores={shopbuy=1..}] run function soso:item/dialog_shop/killer_menu with storage soso:shop
