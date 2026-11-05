# ============================================
#  Exibe o bilhete interativo (incial)
# ============================================
title @s title {"rawtext":[{"text":""}]}
title @s actionbar {"rawtext":[{"text":"§f§l--- O BILHETE ---"}]}
tellraw @s {"rawtext":[{"text":"§7\"Não olhe para ele.\n"}]}
tellraw @s {"rawtext":[{"text":"§7A chave está no §eBANHEIRO§7.\n"}]}
tellraw @s {"rawtext":[{"text":"§7No armário da sala, uma fechadura pede três números.\n"}]}
tellraw @s {"rawtext":[{"text":"§7As pistas estão escondidas na casa: §c2§r §7... §c1§r §7... §c3§r\n"}]}
tellraw @s {"rawtext":[{"text":"§4Ele está vindo. Vai logo.\n"}]}
playsound random.orb @s ~ ~ ~ 1.0 1.0
effect @s darkness 10 0 true
