# ==========================================
# SCRIPT: bear.gd
# PAPEL: Controla a física de pulo, gravidade e animações do jogador
# ENGINE: Godot 4.x
# ==========================================

extends CharacterBody2D
class_name BearPlayer # Permite que outros scripts reconheçam o nó "BearPlayer" facilmente

# --- CONFIGURAÇÕES DE MOVIMENTO (Ajustáveis pelo Inspetor) ---
@export_category("Física do Pulo")
@export var JUMP_FORCE : float = -400.0  # Força vertical do pulo (negativo sobe)
@export var GRAVITY : float = 1200.0     # Velocidade com que o urso cai

# --- COMPONENTES INTERNOS ---
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D # Referência automática ao nó de animação


# --- LOOP PRINCIPAL DE FÍSICA ---
func _physics_process(delta: float) -> void:
	
	# 1. GESTÃO DE GRAVIDADE E ESTADOS NO AR
	if not is_on_floor():
		# Se o urso NÃO estiver no chão, aplica a gravidade gradativamente
		velocity.y += GRAVITY * delta
		
		# Toca a animação de pulo enquanto estiver subindo ou descendo
		animated_sprite.play("jump")
	else:
		# Se o urso ESTIVER no chão, zera a velocidade vertical para não acumular força
		velocity.y = 0
		
		# Garante que a animação de corrida rode enquanto ele estiver firme na pista
		animated_sprite.play("run")

	# 2. ENTRADA DE COMANDOS (INPUT DO JOGADOR)
	# Verifica se o urso está no chão E se o jogador apertou Espaço (ui_accept) ou Seta para Cima (ui_up)
	if is_on_floor() and (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_up")):
		# Aplica a força total do pulo instantaneamente
		velocity.y = JUMP_FORCE

	# 3. EXECUÇÃO DA FÍSICA
	# Move o personagem com base na velocidade configurada e resolve as colisões com o chão automaticamente
	move_and_slide()               
