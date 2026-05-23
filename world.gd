# ==========================================
# SCRIPT: world.gd
# PAPEL: Gerencia o loop principal do jogo, o movimento do fundo (Parallax) e o spawn aleatório de obstáculos
# ENGINE: Godot 4.x
# ==========================================

extends Node2D
class_name GameManager # Define uma identidade global para o gerenciador do jogo

# --- CONFIGURAÇÕES DO CENÁRIO (Ajustáveis pelo Inspetor) ---
@export_category("Configurações do Mundo")
@export var obstacle_scenes : Array[PackedScene] = [] # Lista onde colocamos as cenas dos obstáculos (troncos, pedras, etc.)
@export var scroll_speed : float = 200.0              # Velocidade do movimento do cenário de fundo

# --- REFERÊNCIAS DOS NÓS DO MAPA ---
@onready var parallax_bg = $ParallaxBackground # Referência ao fundo infinito para efeito de movimento
@onready var spawn_point = $SpawnPoint         # Ponto invisível (Marker2D) que dita de onde os obstáculos nascem


# --- LOOP PRINCIPAL DE ATUALIZAÇÃO ---
func _process(delta: float) -> void:
	# PROTEÇÃO: Garante que o ParallaxBackground existe na cena antes de tentar movê-lo
	if parallax_bg:
		# Move o fundo para a esquerda baseado no tempo (delta) para criar a ilusão de corrida constante
		parallax_bg.scroll_offset.x -= scroll_speed * delta


# --- GERADOR DE OBSTÁCULOS (SPAWNER) ---
# Nota: Esta função roda automaticamente toda vez que o "ObstacleTimer" chega a zero
func _on_obstacle_timer_timeout() -> void:
	# PROTEÇÃO: Se a lista de obstáculos estiver vazia, sai da função para evitar erros de leitura
	if obstacle_scenes.size() == 0:
		return
	
	# PROTEÇÃO: Garante que o ponto de nascimento (SpawnPoint) está configurado corretamente na árvore de nós
	if not spawn_point:
		print("Erro: O nó SpawnPoint não foi encontrado no cenário!")
		return
	
	# 1. Sorteia uma cena da lista usando a função nativa e moderna da Godot 4
	var random_scene: PackedScene = obstacle_scenes.pick_random()
	
	# 2. Instancia (clona) o obstáculo sorteado na memória RAM do jogo
	var new_obstacle = random_scene.instantiate()
	
	# 3. Define a posição inicial do novo obstáculo exatamente na coordenada do nosso SpawnPoint
	new_obstacle.position = spawn_point.position
	
	# 4. Adiciona o obstáculo como filho da cena principal para colocá-lo fisicamente dentro do jogo
	add_child(new_obstacle)
