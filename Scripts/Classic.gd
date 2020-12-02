extends Node2D

var score = 0 setget set_score
const bricks = 64
onready var global = get_node("/root/Global")

func set_score(value):
	score = value
	if (score == bricks):
		if (global.classic >= global.currentscore):
			global.classic = global.currentscore
		global.currentscore = 0
		var balls = get_tree().get_nodes_in_group("Balls")
		for ball in balls:
			ball.queue_free()
		get_tree().change_scene("res://Scenes/Menu.tscn")
