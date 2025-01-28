extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player": 
		print("You died!")
		Engine.time_scale = 0.5
		get_tree().change_scene_to_file("res://scenes/game over/game_over.tscn")
		Engine.time_scale = 1.0

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene() # Restarts the game
