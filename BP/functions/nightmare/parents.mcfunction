# ============================================
#  OS PAIS CHEGAM DE CARRO e sao atacados
#  Cena de terror sugerida, SEM violencia grafica.
#  Use /function nightmare/parents quando sair.
# ============================================
title @s title {"rawtext":[{"text":"§7Os pais chegaram"}]}
title @s subtitle {"rawtext":[{"text":"§7...farois cortando a noite."}]}

# Soma os pais como NPCs no quintal (junto ao carro)
summon endernight:pai ~0 ~0 ~9
summon endernight:pai ~2 ~0 ~9
tag @e[type=endernight:pai,c=2] add nightmare_parents

# Soma o carro (forma simples de blocos)
fill ~1 ~0 ~8 ~3 ~0 ~10 black_wool 0
fill ~1 ~1 ~9 ~3 ~1 ~9 glass_pane 0
setblock ~0 ~0 ~9 coal_block 0
setblock ~4 ~0 ~9 coal_block 0

# Luzes do farol ligadas
setblock ~1 ~0 ~7 yellow_wool 0
setblock ~3 ~0 ~7 yellow_wool 0

playsound random.levelup @s ~ ~ ~ 1.0 1.0
tellraw @s {"rawtext":[{"text":"§7Mamãe sorri ao te ver. Papai abre a porta do carro..."}]}

# ============================================
#  CENA DO ATAQUE (sugerida, sem sangue)
#  O irmao surge, os farois tremem, gritos soam,
#  os pais somem na escuridao.
# ============================================
scoreboard players set @s nightmare_stage 5
effect @s blindness 6 0 true
title @s title {"rawtext":[{"text":"§4NÃO OLHE."}]}
title @s subtitle {"rawtext":[{"text":"§7Os farois piscaram tres vezes."}]}
playsound mob.zombie.remedy @s ~ ~ ~ 1.0 0.3
playsound mob.vex.say @s ~ ~ ~ 1.0 0.5

# Grita diante do carro
summon endernight:irmao ~2 ~1 ~10
tag @e[type=endernight:irmao,c=1] add nightmare_brother

# Os pais somem (removidos da cena - sugerido, sem violencia grafica)
kill @e[type=endernight:pai,tag=nightmare_parents]

# Escurece e corta
fill ~-9 ~0 ~7 ~9 ~3 ~15 black_concrete 0 replace air
effect @s darkness 10 0 true
tellraw @s {"rawtext":[{"text":"§4Você não vê mais a luz.\n"}]}
tellraw @s {"rawtext":[{"text":"§4Você tem que correr. Volte para a casa e use /function nightmare/escape\n"}]}
