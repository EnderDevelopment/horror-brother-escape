# ============================================
#  O PAPEL DEBAIXO DA CAMA - inicia a historia
#  Executar: /function nightmare/start
# ============================================

# Configura objetivos de progresso
scoreboard objectives add nightmare_stage dummy "Progresso"
scoreboard objectives add nightmare_key dummy "Chave"
scoreboard objectives add nightmare_pw dummy "Senha"
scoreboard objectives add nightmare_crew dummy "Eixo"

# Define que o jogador esta na historia
tag @s add nightmare_story
scoreboard players set @s nightmare_stage 1

# Escurece o ambiente (efeitos)
effect @s darkness 60 0 true
effect @s night_vision 30 0 true

# Pagina preta de transicao (suspense)
title @s title {"rawtext":[{"text":"§0................"}]}
title @s subtitle {"rawtext":[{"text":"§7Ninguem ve voce..."}]}

# Teleporta o jogador para a cama do quarto (dentro da casa construida)
tp @s ~-5 ~0 ~-4

# Dorme/posiciona (simula o garoto acordando na cama)
time set night

# Da o bilhete interativo
give @s paper 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:display":{"Name":{"text":"§r§f§lBilhete Debaixo da Cama"},"Lore":["§7Um pedaco de papel amassado...","§7'^Nao olhe para ele. A chave esta","§7 no banheiro. Os numeros: 2, 1, 3.","§7Ele sabe que voce esta acordado.'","§r§7[Use /function nightmare/note]"]}}

# Fala do narrador
tellraw @s {"rawtext":[{"text":"§7Você acorda com um barulho debaixo da cama."}]}
tellraw @s {"rawtext":[{"text":"§7Você se abaixa e encontra um papel amassado..."}]}
tellraw @s {"rawtext":[{"text":"§3Veja o bilhete com /function nightmare/note"}]}

# Soa o suspense
playsound ambient.cave @s ~ ~ ~ 1.0 0.5
