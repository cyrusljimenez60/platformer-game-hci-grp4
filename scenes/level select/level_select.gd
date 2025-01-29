extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on__pressed() -> void:
	pass # Replace with function body.


func _on_b_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_1.tscn")


func _on_b_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_2.tscn")


func _on_b_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_3.tscn")


func _on_b_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_4.tscn")


func _on_b_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_5.tscn")


func _on_b_6_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_6.tscn")


func _on_b_7_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_7.tscn")


func _on_b_8_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_8.tscn")


func _on_b_9_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_9.tscn")


func _on_b_10_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_10.tscn")


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main menu/main_menu.tscn")
