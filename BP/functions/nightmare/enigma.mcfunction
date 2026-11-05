# ============================================
#  ENIGMA - tres pistas: 2, 1, 3
#  Cada pista esta escondida em um comodo.
#  Use: /function nightmare/clue1, /clue2, /clue3
# ============================================

# Pista 1 (numero 1) - quarto, atras da prateleira
clue1:
# Pista 2 (numero 2) - cozinha, no fogao
clue2:
# Pista 3 (numero 3) - banheiro, perto do espelho
clue3:

title @s actionbar {"rawtext":[{"text":"§e???"}]}
tellraw @s {"rawtext":[{"text":"§6O papel na parede diz: '§fO primeiro numero: o que você usou para acordar. §62§r§6.'"}]}
tellraw @s {"rawtext":[{"text":"§6Na cozinha, gravado na unha do fogão: '§fO numero do quarto que nunca existiu. §61§r§6.'"}]}
tellraw @s {"rawtext":[{"text":"§6No espelho, escrito com sabão: '§fA idade que seu irmão teria se tivesse ficado. §63§r§6.'"}]}
tellraw @s {"rawtext":[{"text":"§6A senha da fechadura é: §c213§6. Digite /function nightmare/lock"}]}
