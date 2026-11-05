# O Papel Debaixo da Cama

Um add-on de terror completo e jogável para Minecraft Bedrock (Android), contendo Behavior Pack e Resource Pack vinculados. O jogador acorda em uma casa assombrada, encontra um bilhete misterioso debaixo da cama, e precisa explorar a casa, coletar três pistas numéricas (2, 1, 3), encontrar uma chave no banheiro, abrir uma fechadura com a senha 213, e escapar antes que o irmão desperto com um rosto sinistro o alcance. Inclui eventos de suspense, sons, iluminação escura, e uma cena final de terror sugerida sem violência gráfica.

## Instalação

1. Clone ou baixe este repositório.
2. Dentro da pasta raiz, você encontrará as pastas `BP` (Behavior Pack) e `RP` (Resource Pack).
3. Compacte as duas pastas juntas em um arquivo ZIP.
4. Renomeie o arquivo ZIP para terminar com `.mcaddon`, por exemplo: `O-Papel-Debaixo-da-Cama.mcaddon`.
5. Abra o arquivo `.mcaddon` no Minecraft Bedrock (Android). O jogo importará automaticamente o Behavior Pack e o Resource Pack.

**Importante:** Antes de compactar, você precisa converter os arquivos SVG de textura (em `assets/`) para PNG e colocá-los nos caminhos corretos:

- `assets/textures/irmao.svg` → `RP/textures/entity/irmao.png`
- `assets/textures/pai.svg` → `RP/textures/entity/pai.png`
- `assets/gui/pack_icon.svg` → `BP/pack_icon.png` e `RP/pack_icon.png`

## Uso

Após instalar o add-on e ativar os packs no mundo, execute os seguintes comandos:

1. **Construir a casa:** `/function nightmare/build` — isso cria a casa completa com todos os cômodos ao redor do jogador.
2. **Iniciar a história:** `/function nightmare/start` — isso teleporta o jogador para o quarto, entrega o bilhete interativo e começa a aventura.

Durante o jogo, use os comandos adicionais conforme a progressão:

- `/function nightmare/note` — reexibe o bilhete.
- `/function nightmare/clue1`, `/clue2`, `/clue3` — revela as pistas numéricas escondidas nos cômodos.
- `/function nightmare/key` — obtém a chave do banheiro.
- `/function nightmare/lock` — tenta abrir a fechadura (senha 213; requer as 3 pistas).
- `/function nightmare/brother` — desperta o irmão e inicia a perseguição.
- `/function nightmare/parents` — cena em que os pais chegam de carro (ataque sugerido).
- `/function nightmare/escape` — fuga e final misterioso.
- `/function nightmare/reset` — limpa e reinicia a partida.

A progressão automática também roda a cada tick via `tick.json`, ajudando a avançar eventos conforme o jogador explora.

---

More Minecraft plugin projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/da6456b8-88a4-42a9-ae59-6e87d8b4c9b9?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=da6456b8-88a4-42a9-ae59-6e87d8b4c9b9
