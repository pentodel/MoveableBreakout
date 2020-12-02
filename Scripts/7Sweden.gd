extends Node2D

var score = 0 setget set_score
const bricks = 57
onready var global = get_node("/root/Global")

func set_score(value):
	score = value
	print(score)
	if (score == bricks):
		if (global.sweden >= global.currentscore):
			global.sweden = global.currentscore
		global.currentscore = 0
		var balls = get_tree().get_nodes_in_group("Balls")
		for ball in balls:
			ball.queue_free()
		var global = get_node("/root/Global")
		if (global.completed == 6):
			global.completed += 1
		get_tree().change_scene("res://Scenes/Countries Exit Screen/7ExitSweden.tscn")
