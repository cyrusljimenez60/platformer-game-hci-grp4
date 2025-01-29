extends Node

var score = 0
var total_coins = 0  # Track total coins in the level

@onready var score_label: Label = $ScoreLabel

func _ready():
	await get_tree().process_frame  # Ensure all nodes are loaded before counting
	total_coins = get_tree().get_nodes_in_group("coins").size()  # Count all coins
	update_score_label()

func add_point():
	score += 1
	update_score_label()
	
func update_score_label():
	score_label.text = "You collected " + str(score) + "/" + str(total_coins) + " coins."
