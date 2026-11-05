# ============================================
#  PROGRESSAO AUTOMATICA (loop)
#  Registre este tick no tick.json para rodar
#  a cada tick e avancar a historia sozinho.
# ============================================

# Se o irmao matou o jogador -> reinicia o susto
execute @a[tag=nightmare_story,scores={nightmare_stage=2..4}] run tellraw @s {"rawtext":[{"text":"§7Você sente o hálito frio atrás da nuca..."}]}

# Jogador perdeu (morte) -> mensagem de game over
execute @a[tag=nightmare_story,scores={nightmare_stage=6}] run tag @s remove nightmare_story
