class_name mainmenu
extends Control



#@onready var button_1: Button = $MarginContainer/HBoxContainer/VBoxContainer/Button1 as Button
#@onready var button_2: Button = $MarginContainer/HBoxContainer/VBoxContainer/Button2 as Button 
#@onready var button_3: Button = $MarginContainer/HBoxContainer/VBoxContainer/Button3 as Button

#@export  var start_level = preload("res://scenes/Levels/Level1.tscn")


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/Level1.tscn")


func _on_select_levels_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level select/level_select.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
