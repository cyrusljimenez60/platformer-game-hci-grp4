class_name mainmenu
extends Control



@onready var button_1: Button = $MarginContainer/HBoxContainer/VBoxContainer/Button1 as Button
@onready var button_2: Button = $MarginContainer/HBoxContainer/VBoxContainer/Button2 as Button 
@onready var button_3: Button = $MarginContainer/HBoxContainer/VBoxContainer/Button3 as Button

@export  var start_level = preload("res://scenes/Levels/Level1.tscn")

func _ready():
	button_1.pressed.connect(on_start_pressed)
	
	button_3.pressed.connect(on_exit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene(start_level)

func on_exit_pressed() -> void:
	get_tree().quit()
