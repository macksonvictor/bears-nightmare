# 🐻 Bear's Nightmare — Master Documentation

> *Infinite runner pixel art monocromático. Um urso foge pelos pesadelos da floresta noturna.*

---

## Índice

[Visão Geral](#visão-geral) | [Onde Paramos](#onde-paramos) | [Estrutura da Cena](#estrutura-da-cena) | [Assets](#assets) | [O Que Falta](#o-que-falta) | [Roadmap](#roadmap) | [Como Rodar](#como-rodar) | [Contribuindo](#contribuindo)

---

## Visão Geral

**Bear's Nightmare** é um infinite runner 2D em pixel art monocromático cinza escuro desenvolvido na **Godot Engine 4.6** com GDScript.

O jogador controla um urso que corre sem parar por uma floresta noturna perturbadora, desviando de obstáculos e sobrevivendo o maior tempo possível.

| Campo | Detalhe |
|---|---|
| Engine | Godot 4.6.2 stable |
| Linguagem | GDScript |
| Resolução | 480×270 (upscaled) |
| Stretch | canvas_items |
| Aspect | keep |
| Paleta | Monocromático cinza (#1a1a1a → #cccccc) |
| Tom global | CanvasModulate #556070 |
| Gênero | Infinite Runner 2D |
| Plataforma alvo | PC (Windows/Linux/Mac) + Web |

---

## Onde Paramos

> Sessão de desenvolvimento: 22 de maio de 2026

### ✅ Concluído

#### Personagem — bear.tscn
- CharacterBody2D com física e gravidade customizada
- AnimatedSprite2D com animações `run` (4 frames) e `jump` (9 frames)
- CollisionShape2D ajustado ao corpo do urso
- Script bear.gd com sistema de pulo (força + gravidade)
- Detecção de colisão com obstáculos via sinal

#### Cenário — world.tscn
- ParallaxBackground com 10 layers configurados
- Velocidades de parallax calculadas por profundidade focal (fisicamente corretas)
- CanvasModulate com tom #556070 aplicado globalmente
- StaticBody2D como chão com CollisionShape2D
- ObstacleTimer com spawner aleatório funcionando
- SpawnPoint definido fora da tela à direita

#### Layers do ParallaxBackground (ordem e velocidades)

| Layer | motion_scale X | Conteúdo | Status |
|---|---|---|---|
| LayerCeu | 0.00 | Céu noturno com nuvens | ✅ |
| LayerMountains | 0.05 | Montanhas ao fundo | ✅ |
| LayerBackTrees | 0.15 | Pinheiros distantes | ✅ |
| LayerFrontTrees | 0.35 | Árvores + bananeiras | ✅ |
| LayerGrama | 0.75 | Faixa de grama/pasto | ✅ |
| LayerBushBase | 0.50 | Arbustos base das árvores | ✅ |
| LayerPlants | 0.60 | Plantas e vegetação média | ✅ |
| LayerMato | 0.90 | Mato denso próximo ao chão | ✅ |
| LayerPista | 1.00 | Pista de pedras (ColorRect) | ✅ |
| LayerDarkFront | 1.05 | Silhueta escura dramática | ✅ |

#### Obstáculos
- log_obstacle.tscn — tronco caído (Area2D + Sprite2D + CollisionShape2D)
- rock_obstacle_1.tscn — pedra pontiaguda tipo 1
- rock_obstacle_2.tscn — pedra pontiaguda tipo 2
- Script de movimento: todos se movem da direita para esquerda
- Spawner aleatório no world.gd funcionando
- Game Over ao colidir (print no console, sem cena ainda)

#### GitHub
- Repositório: https://github.com/macksonvictor/bears-nightmare
- Todos os assets enviados (84+ arquivos)
- README.md com roadmap completo

---

## Estrutura da Cena

```
World (Node2D)
├── ParallaxBackground
│   ├── LayerCeu (ParallaxLayer) — scale: 0.00
│   │   └── Sprite2D (céu.png)
│   ├── LayerMountains (ParallaxLayer) — scale: 0.05
│   │   └── Sprite2D (mountain.png)
│   ├── LayerBackTrees (ParallaxLayer) — scale: 0.15
│   │   └── Sprite2D (forest-back-trees.png)
│   ├── LayerFrontTrees (ParallaxLayer) — scale: 0.35
│   │   └── Sprite2D (floresta do fundo)
│   │   └── Sprite2D (bananeira - posições variadas)
│   ├── LayerGrama (ParallaxLayer) — scale: 0.75
│   │   └── GramaSprite (grama.png)
│   ├── LayerBushBase (ParallaxLayer) — scale: 0.50
│   │   └── Sprite2D (arbusto dark)
│   ├── LayerPlants (ParallaxLayer) — scale: 0.60
│   │   └── Sprite2D (plantas.png)
│   ├── LayerMato (ParallaxLayer) — scale: 0.90
│   │   └── MatoSprite (mato2.png)
│   ├── LayerPista (ParallaxLayer) — scale: 1.00
│   │   └── ColorRect (cor da pista)
│   └── LayerDarkFront (ParallaxLayer) — scale: 1.05
│       └── Sprite2D (silhueta escura)
├── Ground (StaticBody2D)
│   └── CollisionShape2D
├── bear (instância de bear.tscn)
├── CanvasModulate (cor: #556070)
├── ObstacleTimer (Timer)
└── SpawnPoint (Marker2D)
```

---

## Assets

### Usados no projeto

| Arquivo | Uso | Layer/Cena |
|---|---|---|
| céu.png | Fundo do céu noturno | LayerCeu |
| mountain.png | Montanhas ao fundo | LayerMountains |
| forest-back-trees.png | Pinheiros distantes | LayerBackTrees |
| grama.png | Faixa de grama | LayerGrama |
| arbusto dark-1.png | Arbustos base | LayerBushBase |
| plantas.png | Vegetação média | LayerPlants |
| mato2.png | Mato denso | LayerMato |
| pixellab-stone-dirt-ground... | Pista de pedras | LayerPista |
| arvore da frente.png | Silhueta dramática | LayerDarkFront |
| bananeira-.png | Plantas tropicais | LayerFrontTrees |
| log_stem.png | Tronco obstáculo | log_obstacle.tscn |
| log_stone_1.png | Pedra tipo 1 | rock_obstacle_1.tscn |
| log_stone_2.png | Pedra tipo 2 | rock_obstacle_2.tscn |
| untitled_0001-0004.png (run) | Animação corrida | bear.tscn |
| untitled_0001-0009.png (jump) | Animação pulo | bear.tscn |

### Disponíveis mas ainda não usados

| Arquivo | Uso pretendido |
|---|---|
| arvores2.png | Árvore grande foreground |
| unknown.png | Árvore seca/morta |
| unknown2.png | Pinheiro pixel art |
| sfsfs.png | Tronco caído (novo obstáculo) |
| Generate_True pixel art fallen log... | Tronco obstáculo alternativo |
| Generate_True pixel art small scattered rocks... | Pedras agrupadas obstáculo |
| Generate_True pixel art small individual rocks... | Pedras soltas obstáculo |
| plantinjha.png | Plantinha decorativa |
| ffs.png | Asset extra |
| 1.png / 12.png / 32.png | Assets extras |
| world/ceu lindo.png | Céu alternativo |
| pedras/ (pasta) | Spritesheet de pedras |

---

## O Que Falta

### 🔴 Crítico — Jogo incompleto sem isso

#### 1. HUD (Interface do Jogador)
```
Estrutura a criar:
CanvasLayer (HUD, layer: 10)
└── Control
    ├── Label (ScoreLabel) — "SCORE: 000000"
    └── HBoxContainer
        ├── TextureRect (vida1)
        ├── TextureRect (vida2)
        └── TextureRect (vida3)

Script: hud.gd
- func update_score(value: int)
- func update_lives(count: int)
```

#### 2. Sistema de Vidas
- Urso começa com 3 vidas
- Perde 1 vida ao colidir (não game over direto)
- Invencibilidade temporária após colisão (2 segundos)
- Animação de piscar durante invencibilidade
- Game Over só quando vidas = 0

#### 3. Tela de Game Over
```
Nova cena: game_over.tscn
Control
├── ColorRect (tela preta, fullscreen)
├── Label "GAME OVER"
├── Label "SCORE: XXXXX"
├── Button "JOGAR NOVAMENTE" → world.tscn
└── Button "MENU" → menu.tscn

No world.gd substituir print("Game Over") por:
get_tree().change_scene_to_file("res://game_over.tscn")
```

#### 4. Score em Tempo Real
```gdscript
# No world.gd
var score: float = 0.0
var speed: float = 200.0

func _process(delta):
    score += speed * delta
    $ParallaxBackground.scroll_offset.x -= speed * delta
    $HUD.update_score(int(score))
```

---

### 🟡 Importante — Melhora muito o jogo

#### 5. Dificuldade Progressiva
```gdscript
# Velocidade aumenta com o tempo
func _process(delta):
    speed = min(200.0 + score * 0.05, 600.0)
    ObstacleTimer.wait_time = max(1.5 - score * 0.0005, 0.4)
```

#### 6. Novos Obstáculos
- log_obstacle_2.tscn — tronco novo (sfsfs.png)
- rock_obstacle_3.tscn — grupo de pedras
- rock_obstacle_4.tscn — pedras soltas variadas
- Adicionar no spawner do world.gd

#### 7. Tela Inicial / Menu
```
Nova cena: menu.tscn
Control
├── Label "BEAR'S NIGHTMARE"
├── AnimatedSprite2D (urso correndo em loop)
├── Button "JOGAR"
└── Button "CRÉDITOS"
```

#### 8. High Score
```gdscript
# Salvar localmente
func save_high_score(score: int):
    var config = ConfigFile.new()
    config.set_value("scores", "high_score", score)
    config.save("user://save.cfg")
```

---

### 🟢 Polimento — Visual e sonoro

#### 9. Efeito CRT
```gdscript
# ShaderMaterial no ColorRect cobrindo tela inteira
shader_type canvas_item;
uniform float scanline_intensity = 0.08;
uniform float vignette_intensity = 0.3;

void fragment() {
    float scanline = sin(UV.y * 270.0 * 3.14159) * scanline_intensity;
    float vignette = length(UV - vec2(0.5)) * vignette_intensity;
    COLOR = vec4(0.0, 0.0, 0.0, scanline + vignette);
}
```

#### 10. Elementos Visuais Restantes
- Árvores grandes próximas à pista (arvores2.png no LayerDarkFront)
- Árvore seca (unknown.png no LayerDarkFront)
- Plantas tropicais espalhadas (LayerFrontTrees)
- Pedras decorativas no chão (LayerPista)
- Lua/estrelas no céu

#### 11. Áudio
- Música de fundo em loop (tema noturno)
- Som de passada do urso
- Som de pulo
- Som de colisão
- Som de game over

#### 12. Animações Extras
- Animação de morte do urso
- Partículas de poeira nos pés ao correr
- Partículas ao colidir
- Fade in/out entre cenas

---

### 🔵 Lançamento

#### 13. Export e Publicação
- Export Windows (.exe)
- Export Web (HTML5) para itch.io
- Ícone do jogo finalizado
- Splash screen com logo
- Página no itch.io com screenshots

#### 14. Marketing
- Trailer de 30 segundos com gameplay
- GIF animado para redes sociais
- Post no Reddit (r/indiegaming, r/godot, r/pixelart)
- Post no Twitter/X

---

## Roadmap

```
FASE 1 — Jogo jogável (esta semana)
├── ✅ Cenário parallax completo
├── ✅ Obstáculos e spawner
├── ⬜ HUD com score e vidas
├── ⬜ Sistema de vidas (3 vidas)
├── ⬜ Tela de Game Over
└── ⬜ Tela inicial / Menu

FASE 2 — Polimento (próximas semanas)
├── ⬜ Dificuldade progressiva
├── ⬜ Novos obstáculos (3-4 tipos)
├── ⬜ High Score salvo localmente
├── ⬜ Efeito CRT
├── ⬜ Elementos visuais restantes
└── ⬜ Áudio completo

FASE 3 — Lançamento
├── ⬜ Export Windows + Web
├── ⬜ Publicação no itch.io
├── ⬜ Trailer e marketing
└── ⬜ Post em comunidades indie
```

---

## Como Rodar

### Requisitos
- Godot Engine 4.6.2 stable

### Passos
```bash
git clone https://github.com/macksonvictor/bears-nightmare.git
```

1. Abre o Godot Engine 4.6
2. **Importar** → navega até a pasta clonada
3. Abre o `project.godot`
4. Pressiona **F5** para rodar

### Controles atuais

| Tecla | Ação |
|---|---|
| `SPACE` ou `↑` | Pular |

---

## Estrutura de Arquivos

```
bears-nightmare/
├── bear art/
│   ├── bear jump/     # 9 frames do pulo
│   └── bear run/      # 4 frames da corrida
├── obstacle art/
│   ├── log_stem.png
│   ├── log_stone_1.png
│   └── log_stone_2.png
├── world art/
│   ├── arvores/       # assets de árvores extras
│   ├── bear/          # sprites extras do urso
│   ├── jump/          # sprites extras do pulo
│   ├── pedras/        # spritesheet de pedras
│   ├── running bear/  # sprites extras da corrida
│   ├── world/         # assets alternativos do cenário
│   ├── céu.png
│   ├── mountain.png
│   ├── grama.png
│   ├── mato2.png
│   ├── plantas.png
│   ├── bananeira-.png
│   ├── arvore da frente.png
│   ├── arvores2.png
│   └── ... (demais assets)
├── addons/
│   └── godot-git-plugin/
├── bear.gd
├── bear.tscn
├── log_obstacle.gd
├── log_obstacle.tscn
├── rock_obstacle_1.gd
├── rock_obstacle_1.tscn
├── rock_obstacle_2.tscn
├── world.gd
├── world.tscn
└── project.godot
```

---

## Contribuindo

```bash
# Clone o repositório
git clone https://github.com/macksonvictor/bears-nightmare.git

# Cria uma branch para sua feature
git checkout -b feature/nome-da-feature

# Depois de fazer as mudanças
git add .
git commit -m "feat: descrição do que foi feito"
git push origin feature/nome-da-feature

# Abre um Pull Request no GitHub
```

### Convenção de commits

| Prefixo | Uso |
|---|---|
| `feat:` | Nova funcionalidade |
| `fix:` | Correção de bug |
| `assets:` | Adição/atualização de assets |
| `docs:` | Documentação |
| `refactor:` | Refatoração de código |

---

## Licença

MIT License

---

**Repositório:** https://github.com/macksonvictor/bears-nightmare
**Engine:** Godot 4.6.2 stable
**Status:** Desenvolvimento ativo — Fase 1 em andamento
**Última atualização:** 22 de maio de 2026

> *"Na floresta dos pesadelos, só os ursos mais rápidos sobrevivem."*
