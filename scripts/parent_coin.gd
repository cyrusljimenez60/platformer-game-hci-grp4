extends Node

func _ready():
	for coin in get_children():
		if coin is Area2D:  # Ensure we're only adding Area2D coins
			coin.add_to_group("coins")
