# ============================================
#  PISTA 3 - numero 3 (banheiro)
#  Escrito com sabao no espelho.
# ============================================
title @s actionbar {"rawtext":[{"text":"§eEncontrou um numero: §c3"}]}
tellraw @s {"rawtext":[{"text":"§7No espelho do banheiro, escrito com sabão: §c3"}]}
playsound random.orb @s ~ ~ ~ 1.0 0.7
scoreboard players add @s nightmare_crew 10
