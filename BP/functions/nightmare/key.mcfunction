# ============================================
#  CHAVE DO BANHEIRO - coleta
#  Use /function nightmare/key ao pegar a chave
#  escondida no banheiro.
# ============================================
tellraw @s {"rawtext":[{"text":"§7Você pega a chave fria e enferrujada do banheiro."}]}
scoreboard players set @s nightmare_key 1
tag @s add nightmare_has_key
title @s actionbar {"rawtext":[{"text":"§eChave obtida! §7Agora acha a fechadura da sala."}]}
playsound random.levelup @s ~ ~ ~ 1.0 1.0
effect @s darkness 4 0 true
