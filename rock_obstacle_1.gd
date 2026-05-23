extends Area2D

@export var speed : float = 350.0

func _process(delta: float) -> void:
	position.x -= speed * delta
	if position.x < -100:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	if body.name == "bear":
		get_tree().reload_current_scene()
