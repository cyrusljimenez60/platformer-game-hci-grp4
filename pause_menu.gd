extends Control

func resume():
	get_tree().paused = false

func pause():
	get_tree().paused = true

func testEsc():
	if Input.is_action_just_pressed("esc") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()

func _on_resume_pressed():
	resume()

func _on_quit_pressed() -> void:
	get_tree().quit()

func _process(delta):
	testEsc()

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/main menu/")

func _on_select_levels_pressed() -> void:
	pass # Replace with function body.
