# ============================================
#  PISTA 2 - numero 2 (cozinha)
#  Gravado na unha do fogao.
# ============================================
title @s actionbar {"rawtext":[{"text":"§eEncontrou um numero: §c2"}]}
tellraw @s {"rawtext":[{"text":"§7Na porta do fogão, alguém gravou com uma faca: §c2"}]}
playsound random.orb @s ~ ~ ~ 1.0 0.7
scoreboard players add @s nightmare_crew 10
