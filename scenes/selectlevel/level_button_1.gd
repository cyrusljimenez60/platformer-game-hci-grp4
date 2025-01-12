@tool
extends TextureButton

signal level_selected

@export var level_num: int = 1
@export var locked: bool = true:
	set(value):
		locked = value
		level_locked() if locked else level_unlocked()

# Function to handle locked state
func level_locked() -> void:
	level_state(true)

# Function to handle unlocked state
func level_unlocked() -> void:
	level_state(false)

# Function to set the button's disabled state and Label visibility
func level_state(value: bool) -> void:
	disabled = value

	# Use get_node_or_null to safely check for the Label node
	var label = get_node_or_null("Label")
	if label:
		label.visible = not value
	else:
		print("Label node not found!")

# The _ready function will wait for the node to be added to the scene tree
func _ready() -> void:
	# Ensure the node is part of the scene tree before interacting with it
	if is_inside_tree():
		var label = get_node_or_null("Label")
		if label:
			label.visible = not locked
		else:
			print("Label node not found!")
	else:
		# The node is not yet inside the tree, so wait until the next frame
		await get_tree().idle_frame
		var label = get_node_or_null("Label")
		if label:
			label.visible = not locked
		else:
			print("Label node not found after waiting!")

# Handle the button press
func _on_pressed() -> void:
	level_selected.emit(level_num)
