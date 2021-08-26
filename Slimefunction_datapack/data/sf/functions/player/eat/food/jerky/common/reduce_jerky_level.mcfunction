effect give @s minecraft:saturation 1 0
scoreboard players operation @s sfJerkyLevel -= $sf_jerky_level_reduction sfValue
tag @s[scores={sfJerkyLevel=..0}] remove tick20