# ============================================
#  PISTA 1 - numero 1 (quarto)
#  Encontrada atras da prateleira do quarto.
# ============================================
title @s actionbar {"rawtext":[{"text":"§eEncontrou um numero: §c1"}]}
tellraw @s {"rawtext":[{"text":"§7Atrás da prateleira do quarto, riscado na parede: §c1"}]}
playsound random.orb @s ~ ~ ~ 1.0 0.7
scoreboard players add @s nightmare_crew 10
