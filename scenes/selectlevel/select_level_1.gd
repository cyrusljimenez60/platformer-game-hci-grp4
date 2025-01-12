extends Control

@export var main_menu_scene = preload("res://scenes/main menu/main_menu.tscn")

var is_unlocked: bool = false
var number: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Scene ready.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Ensure this function is connected to the back button's pressed signal
func _on_back_button_pressed() -> void:
	get_tree().change_scene(main_menu_scene)
