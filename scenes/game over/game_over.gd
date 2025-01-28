extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#func _on_restart_pressed() -> void:
	#var current_scene = get_tree().current_scene 
	#if current_scene:
		#get_tree().reload_current_scene() # Reload the current scene

func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/Level1.tscn")
# Dynamically load a level

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main menu/main_menu.tscn")
