# ============================================
#  O PAPEL DEBAIXO DA CAMA - constroe a casa
#  Executar: /function nightmare/build
#  A casa e' gerada ao redor do jogador.
# ============================================
title @s title {"rawtext":[{"text":"§4O PAPEL DEBAIXO DA CAMA"}]}
title @s subtitle {"rawtext":[{"text":"§7Construindo a casa..."}]}

# ---------- TERRENO ----------
# Limpa a area
fill ~-9 ~-2 ~-9 ~9 ~7 ~9 air

# Quintal (grama) nos fundos (lado sul, z+)
fill ~-9 ~-2 ~7 ~9 ~-2 ~15 grass_block

# ---------- PISO DA CASA (13x13) ----------
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 oak_planks

# ---------- PAREDES EXTERNAS ----------
fill ~-6 ~0 ~-6 ~-6 ~3 ~6 oak_planks
fill ~6 ~0 ~-6 ~6 ~3 ~6 oak_planks
fill ~-6 ~0 ~-6 ~6 ~3 ~-6 oak_planks
fill ~-6 ~0 ~6 ~6 ~3 ~6 oak_planks

# ---------- TETO ----------
fill ~-6 ~4 ~-6 ~6 ~4 ~6 oak_planks
fill ~-6 ~5 ~-6 ~6 ~5 ~6 oak_planks

# ---------- PORTA DA FRENTE (lado norte, z-6, centro x0) ----------
setblock ~0 ~0 ~-6 air
setblock ~0 ~1 ~-6 air
setblock ~0 ~2 ~-6 air
setblock ~0 ~0 ~-5 oak_door 0
setblock ~0 ~1 ~-5 oak_door 8

# ---------- JANELAS ----------
setblock ~-4 ~1 ~-6 glass_pane 0
setblock ~-4 ~2 ~-6 glass_pane 0
setblock ~4 ~1 ~-6 glass_pane 0
setblock ~4 ~2 ~-6 glass_pane 0
setblock ~-6 ~1 ~2 glass_pane 0
setblock ~-6 ~2 ~2 glass_pane 0
setblock ~6 ~1 ~0 glass_pane 0
setblock ~6 ~2 ~0 glass_pane 0
setblock ~6 ~1 ~2 glass_pane 0
setblock ~6 ~2 ~2 glass_pane 0

# ============================================
#  DIVISOES INTERNAS (corredor central)
#  Planta (vista de cima, x de -6 a 6, z de -6 a 6)
#  NW = QUARTO, NE = BANHEIRO
#  SW = COZINHA, SE = SALA
#  Centro = CORREDOR
# ============================================

# Paredes internas - divisao z=-1 (separa quarto/banheiro de cozinha/sala)
fill ~-6 ~0 ~-1 ~-2 ~3 ~-1 oak_planks
fill ~2 ~0 ~-1 ~6 ~3 ~-1 oak_planks
# deixa passagem central do corredor (x -1 a 1)

# Divisao x=-2 (separa quarto do banheiro)
fill ~-2 ~0 ~-6 ~-2 ~3 ~-1 oak_planks
# Divisao x=2 (separa cozinha da sala)
fill ~2 ~0 ~-6 ~2 ~3 ~-1 oak_planks

# Porta do quarto (na parede z=-1, x=-4)
setblock ~-4 ~0 ~-1 air
setblock ~-4 ~1 ~-1 air
setblock ~-3 ~0 ~-1 oak_fence 0
setblock ~-3 ~1 ~-1 oak_fence 0

# Porta do banheiro (na parede z=-1, x=5)
setblock ~5 ~0 ~-1 air
setblock ~5 ~1 ~-1 air

# Porta cozinha (na parede z=-1, x=4, lado sul)
setblock ~4 ~0 ~-1 air
setblock ~4 ~1 ~-1 air

# ============================================
#  QUARTO (x -6..-3, z -6..-2)
# ============================================
# Cama (onde esta o bilhete)
setblock ~-5 ~-1 ~-4 red_bed 3
setblock ~-4 ~-1 ~-4 red_bed 11
# Travesseiro/cabecera
setblock ~-5 ~0 ~-4 red_wool 0
# Cadeira e mesa pequena
setblock ~-3 ~-1 ~-3 oak_stairs 0
setblock ~-3 ~-1 ~-2 crafting_table 0
# Prateleira
fill ~-6 ~0 ~-5 ~-6 ~2 ~-5 bookshelf 0
# Lampiao fraco (iluminacao escura)
setblock ~-4 ~3 ~-3 lantern 0
# Esconderijo - bilhete dado no start

# ============================================
#  BANHEIRO (x 3..6, z -6..-2)
# ============================================
# Pia
setblock ~4 ~-1 ~-5 cauldron 0
fill ~4 ~0 ~-5 ~4 ~2 ~-5 stone_bricks 0
# Vaso
setblock ~5 ~-1 ~-4 cauldron 0
# Banheira
fill ~3 ~-1 ~-3 ~4 ~-1 ~-3 light_blue_wool 0
fill ~3 ~0 ~-3 ~4 ~0 ~-3 light_blue_wool 0
# Espelho
setblock ~3 ~1 ~-5 glass_pane 0
# Toalha
setblock ~6 ~0 ~-4 white_wool 0
# CHAVE escondida no banheiro (no chao, atras do vaso)
setblock ~5 ~-1 ~-3 tripwire_hook 0
give @s iron_nugget 1

# ============================================
#  COZINHA (x -6..-3, z 0..6)
# ============================================
# Fogao
setblock ~-5 ~-1 ~3 furnace 0
setblock ~-5 ~0 ~3 furnace 0
# Balcao
fill ~-6 ~-1 ~2 ~-6 ~0 ~4 stone 0
# Geladeira
setblock ~-4 ~-1 ~5 stone 0
setblock ~-4 ~0 ~5 stone 0
setblock ~-4 ~1 ~5 stone 0
# Mesa da cozinha
setblock ~-5 ~-1 ~1 oak_fence 0
# Lampiao
setblock ~-5 ~3 ~3 lantern 0

# ============================================
#  SALA (x 3..6, z 0..6)
# ============================================
# Sofa
fill ~4 ~-1 ~5 ~6 ~-1 ~5 red_wool 0
fill ~4 ~0 ~5 ~6 ~0 ~5 red_wool 0
fill ~4 ~-1 ~4 ~6 ~-1 ~4 red_carpet 0
# Mesa de centro
setblock ~5 ~-1 ~3 oak_fence 0
setblock ~4 ~-1 ~2 oak_fence 0
# Televisao (painel escuro)
fill ~3 ~0 ~3 ~3 ~2 ~3 black_wool 0
# Fecladura/enigma na parede proxima a porta dos fundos
setblock ~3 ~1 ~6 lever 0

# ============================================
#  CORREDOR CENTRAL
# ============================================
# Tapete
fill ~-1 ~-1 ~-3 ~1 ~-1 ~3 red_carpet 0
# Lampiao no corredor
setblock ~0 ~3 ~0 lantern 0

# ============================================
#  QUINTAL (lado sul, fora da casa)
# ============================================
# Arvores quebradas e cercas
setblock ~-3 ~0 ~9 oak_fence 0
setblock ~-3 ~1 ~9 oak_fence 0
setblock ~3 ~0 ~9 oak_fence 0
setblock ~3 ~1 ~9 oak_fence 0
# Brinquedo de crianca (arca)
setblock ~1 ~-1 ~10 barrel 0
setblock ~1 ~0 ~10 barrel 0
# Cachorro/casa de cachorro
setblock ~-5 ~-1 ~10 oak_planks 0

# ---------- ILUMINACAO DO TETO DA CASA ----------
fill ~-6 ~3 ~-6 ~6 ~3 ~6 sea_lantern 0 replace air

# ---------- AVISO ----------
title @s title {"rawtext":[{"text":"§aCasa construida!"}]}
title @s subtitle {"rawtext":[{"text":"§7Agora use /function nightmare/start"}]}
