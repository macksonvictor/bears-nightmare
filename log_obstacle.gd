# ==========================================
# SCRIPT: log_obstacle.gd
# PAPEL: Controla o movimento dos obstáculos para a esquerda e detecta o Game Over
# ENGINE: Godot 4.x
# ==========================================

extends Area2D
class_name LogObstacle # Define uma identidade para este nó na engine

# --- CONFIGURAÇÕES DE MOVIMENTO (Ajustável pelo Inspetor) ---
@export_category("Configurações do Obstáculo")
@export var speed : float = 350.0 # Velocidade com que o tronco corre para a esquerda


# --- LOOP PRINCIPAL DE ATUALIZAÇÃO ---
func _process(delta: float) -> void:
	# Move o obstáculo constantemente para a esquerda baseado no delta (independente do FPS)
	position.x -= speed * delta
	
	# SISTEMA DE LIMPEZA: Se o obstáculo sair da tela (X menor que -100), ele se destrói
	if position.x < -100:
		queue_free() # Remove o nó da memória para o jogo não travar depois de minutos jogando


# --- DETECÇÃO DE IMPACTO ---
# Nota: Esta função deve estar conectada ao sinal "body_entered" da própria Area2D
func _on_body_entered(body: Node2D) -> void:
	# Compara se o corpo que entrou na área pertence à classe do Urso (BearPlayer)
	if body is BearPlayer:
		print("Game Over! O urso colidiu com o obstáculo.")
		
		# Reinicia a partida imediatamente recarregando a cena atual
		get_tree().reload_current_scene()      
