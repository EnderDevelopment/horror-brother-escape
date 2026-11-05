# ============================================
#  RESET - limpa a partida (reinicio rapido)
# ============================================
scoreboard players reset @a nightmare_stage
scoreboard players reset @a nightmare_key
scoreboard players reset @a nightmare_pw
scoreboard players reset @a nightmare_crew
tag @a remove nightmare_story
tag @a remove nightmare_door_open
tag @a remove nightmare_has_key
tag @a remove nightmare_brother
kill @e[type=endernight:irmao]
kill @e[type=endernight:pai]
effect @a clear
clear @a paper
tellraw @a {"rawtext":[{"text":"§7História reiniciada. Use /function nightmare/build e /function nightmare/start."}]}
