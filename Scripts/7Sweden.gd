extends Node2D

var score = 0 setget set_score
const bricks = 47

func set_score(value):
	score = value
	print(score)
	if (score == bricks):
		var balls = get_tree().get_nodes_in_group("Balls")
		for ball in balls:
			ball.queue_free()
		get_tree().change_scene("res://Scenes/Countries Exit Screen/7ExitSweden.tscn")
