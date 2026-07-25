clear @s[team=!build]
effect clear @s[team=!build]
function soso:item/tagclear
tag @s add start
execute if score @s team matches 0 run scoreboard players set @s team 1
scoreboard players set @s[team=Killer,scores={team=10..}] team 1
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=1}] run function soso:item/suv/1
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=2}] run function soso:item/suv/2
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=3}] run function soso:item/suv/3
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=4}] run function soso:item/suv/4
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=5}] run function soso:item/suv/5
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=6}] run function soso:item/suv/6
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=7}] run function soso:item/suv/7
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=8}] run function soso:item/suv/8
execute unless score flags zTEST matches 1 as @s[team=Runner,scores={team=9}] run function soso:item/suv/9
execute if score flags zTEST matches 1 as @s[scores={team=1}] run function soso:item/suv/1
execute if score flags zTEST matches 1 as @s[scores={team=2}] run function soso:item/suv/2
execute if score flags zTEST matches 1 as @s[scores={team=3}] run function soso:item/suv/3
execute if score flags zTEST matches 1 as @s[scores={team=4}] run function soso:item/suv/4
execute if score flags zTEST matches 1 as @s[scores={team=5}] run function soso:item/suv/5
execute if score flags zTEST matches 1 as @s[scores={team=6}] run function soso:item/suv/6
execute if score flags zTEST matches 1 as @s[scores={team=7}] run function soso:item/suv/7
execute if score flags zTEST matches 1 as @s[scores={team=8}] run function soso:item/suv/8
execute if score flags zTEST matches 1 as @s[scores={team=9}] run function soso:item/suv/9
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=1}] run function soso:item/killer/1
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=2}] run function soso:item/killer/2
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=3}] run function soso:item/killer/3
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=4}] run function soso:item/killer/4
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=5}] run function soso:item/killer/5
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=6}] run function soso:item/killer/6
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=7}] run function soso:item/killer/7
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=8}] run function soso:item/killer/8
execute unless score flags zTEST matches 1 as @s[team=Killer,scores={team=9}] run function soso:item/killer/9
execute unless score flags zTEST matches 1 unless score spy zTEST matches 1 as @s[team=Killer] run function soso:item/killer/all
execute if score runman zTEST matches 1.. run effect give @s minecraft:resistance infinite 252 true
execute if score shopopen zTEST matches 1 run scoreboard players set @s shop 0
execute if score shopopen zTEST matches 1 run clear @s[team=!build,team=!spc] *[custom_data~{shopopen:1b}]
execute if score shopopen zTEST matches 1 run give @s[team=!build,team=!spc] minecraft:carrot_on_a_stick[unbreakable={},custom_name=[{"text":""},{"text":"商店連線裝置","color":"gold","bold":true}],lore=[["丟出可開啟聊天欄商店"],[{keybind:"key.use"},"可開啟dialog商店"]],custom_data={shopopen:1b,suv:1b},item_model="ghast_tear"]





