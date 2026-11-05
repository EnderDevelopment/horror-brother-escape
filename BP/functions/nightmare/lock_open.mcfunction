# ============================================
#  Fechadura aberta - abre a porta dos fundos
# ============================================
# Remove a parede da porta dos fundos (sala -> quintal)
setblock ~0 ~0 ~6 air
setblock ~0 ~1 ~6 air
fill ~3 ~0 ~6 ~4 ~1 ~6 air
tag @s add nightmare_door_open
scoreboard players set @s nightmare_stage 4
title @s actionbar {"rawtext":[{"text":"§aPorta dos fundos aberta! Saia pela sala."}]}
playsound random.levelup @s ~ ~ ~ 1.0 1.0
