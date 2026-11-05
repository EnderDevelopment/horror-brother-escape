# ============================================
#  FUGA - escapa da casa apos o ataque dos pais
#  Use /function nightmare/escape
# ============================================
effect @s blindness 2 0 true
title @s title {"rawtext":[{"text":"§7O PAPEL"}]}
title @s subtitle {"rawtext":[{"text":"§7Debaixo da cama"}]}
tellraw @s {"rawtext":[{"text":"§7Você corre pela escuridão, o coração aos pulos."}]}
tellraw @s {"rawtext":[{"text":"§7Atrás de você, passos. Atrás de você, respiração."}]}
tellraw @s {"rawtext":[{"text":"§7Você cruza a porta dos fundos, pisa na grama fria,"}]}
tellraw @s {"rawtext":[{"text":"§7e corre sem olhar para trás."}]}

# O irmao fica para tras (deixado na casa)
tellraw @s {"rawtext":[{"text":"§cEscute. Ele parou. Ele sorriu."}]}
playsound mob.ghast.scream @s ~ ~ ~ 1.0 0.4

# Completa a historia
scoreboard players set @s nightmare_stage 6
tag @s remove nightmare_story
effect @s regeneration 20 1 true
effect @s night_vision 60 0 true

# ============================================
#  FINAL MISTERIOSO
# ============================================
title @s title {"rawtext":[{"text":"§4FIM?"}]}
title @s subtitle {"rawtext":[{"text":"§7Ou apenas o começo..."}]}
tellraw @s {"rawtext":[{"text":"§7Você olha para a mão."}]}
tellraw @s {"rawtext":[{"text":"§7O bilhete ainda está ali. As letras mudaram."}]}
tellraw @s {"rawtext":[{"text":"§c\"Agora você sabe. Volte. Ele quer brincar.\""}]}
give @s paper 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:display":{"Name":{"text":"§cBilhete Amaldiçoado"},"Lore":["§7As letras se moveram sozinhas.","§7\"Volte. Ele quer brincar.\""]}}
playsound random.anvil_land @s ~ ~ ~ 1.0 0.3
effect @s darkness 4 0 true
