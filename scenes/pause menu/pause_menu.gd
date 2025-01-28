extends Control


var is_paused = false:
	set(value):
		is_paused = value
		get_tree().paused = is_paused
		visible = is_paused # Toggles the visibility of the pause menu

func _ready():
	visible = false # Ensure the pause menu starts hidden

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		is_paused = !is_paused 
		
func resume():
	get_tree().paused = false
	visible = false

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

func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main menu/main_menu.tscn")

func _on_select_levels_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/level select/level_select.tscn")
