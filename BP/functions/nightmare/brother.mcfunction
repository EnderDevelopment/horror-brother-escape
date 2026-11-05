# ============================================
#  IRMAO desperta e comeca a perseguicao
#  Chamado automaticamente pela progressao.
# ============================================
scoreboard players set @s nightmare_stage 2
title @s title {"rawtext":[{"text":"§4ELE ACORDOU"}]}
title @s subtitle {"rawtext":[{"text":"§7...e o rosto dele nao e' o mesmo."}]}

# Soma o irmao perto da cama (espelho de suspense)
summon endernight:irmao ~-6 ~0 ~-6
tag @e[type=endernight:irmao,c=1] add nightmare_brother

# Toca som agudo (suspense)
playsound mob.ghast.scream @s ~ ~ ~ 1.0 0.5
effect @s darkness 8 0 true
effect @s slowness 3 1 true

tellraw @s {"rawtext":[{"text":"§4Você ouve passos no corredor."}]}
tellraw @s {"rawtext":[{"text":"§7Você tem tempo para: pegar a chave no §eBANHEIRO§7 e achar as §63 pistas§7."}]}
