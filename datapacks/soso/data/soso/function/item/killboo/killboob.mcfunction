scoreboard players set rammax zTEST 3
function soso:alltimeuse/ramdonrammax
scoreboard players set @s killboo 0
particle minecraft:firework ~ ~ ~ 0 0 0 0.1 100
playsound minecraft:block.end_gateway.spawn block @a ~ ~ ~
execute if score ramdon zTEST matches 0 run give @s minecraft:bow[damage=384,enchantments={"minecraft:power":3},custom_name=[{"text":""},{"text":"殺手之弓","color":"gold","bold":true}],lore=["怒火爆氣","殲滅前敵。"]]
execute if score ramdon zTEST matches 0 run tellraw @a {"text":"怒火爆氣，殲滅前敵─殺手之弓","color":"dark_red","bold":true}
execute if score ramdon zTEST matches 1 run give @s minecraft:crossbow[damage=326,enchantments={"minecraft:piercing":5},custom_name=[{"text":""},{"text":"殺手之弩","color":"gold","bold":true}],lore=["怒火爆氣","貫通前敵。"]]
execute if score ramdon zTEST matches 1 run tellraw @a {"text":"怒火爆氣，貫通前敵─殺手之弩","color":"dark_red","bold":true}
execute if score ramdon zTEST matches 0..1 run give @s minecraft:arrow 1
execute if score ramdon zTEST matches 2 run give @s minecraft:golden_boots[damage=88,custom_name=[{"text":""},{"text":"抗退之靴","color":"gold","bold":true}],lore=["怒火爆氣","果敢前行。"],attribute_modifiers=[{type:"knockback_resistance",slot:"feet",amount:100,operation:"add_value",id:"3d01d3bd-3bc0-738f-3c7d-2fdc42252b63"}]]
execute if score ramdon zTEST matches 2 run tellraw @a {"text":"怒火爆氣，果敢前行─抗退之靴","color":"dark_red","bold":true}
execute if score ramdon zTEST matches 3 run give @s minecraft:potion[potion_contents={custom_color:16646020,custom_effects:[{id:"minecraft:jump_boost",amplifier:2,duration:100}]},custom_name=[{"text":""},{"text":"殺手之躍","color":"gold","bold":true}],lore=["怒火爆氣","飛上雲霄。"]]
execute if score ramdon zTEST matches 3 run tellraw @a {"text":"怒火爆氣，飛上雲霄─殺手之躍","color":"dark_red","bold":true}