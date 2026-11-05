# ============================================
#  FECHADURA - senha 213
#  Uso: /function nightmare/lock
#  A senha é 213. Você precisa ter coletado as
#  3 pistas (clue1, clue2, clue3) para saber os
#  numeros 2, 1 e 3 e destrancar a saida dos fundos.
# ============================================

tellraw @s {"rawtext":[{"text":"§7Você se ajoelha diante da fechadura da porta dos fundos."}]}
tellraw @s {"rawtext":[{"text":"§7Digita os números na ordem das pistas: §c213§7."}]}
playsound random.click @s ~ ~ ~ 1.0 1.0

# Se ainda faltam pistas, a fechadura não cede
execute @s[scores={nightmare_crew=0..29}] run tellraw @s {"rawtext":[{"text":"§7A fechadura range e trava. Faltam pistas..."}]}

# Se coletou as 3 pistas (crew=30), a senha 213 abre
execute @s[scores={nightmare_crew=30..}] run function nightmare/lock_open
