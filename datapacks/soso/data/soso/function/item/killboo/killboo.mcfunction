advancement revoke @s only soso:killboo
execute as @s[team=Killer] if score killboo zTEST matches 1 store result bossbar minecraft:killboo value run scoreboard players add @s[tag=start] killboo 10
execute if score killboo zTEST matches 1 if entity @s[team=Killer] run bossbar set minecraft:killboo players @a

schedule function soso:bossbar 10t

effect give @s[tag=kspeed1] minecraft:speed 5 0 true
effect give @s[tag=kspeed2] minecraft:speed 5 1 true
effect give @s[tag=kspeed3] minecraft:speed 5 2 true
effect give @s[tag=kspeed4] minecraft:speed 5 3 true
effect give @s[tag=kspeed5] minecraft:speed 5 4 true



