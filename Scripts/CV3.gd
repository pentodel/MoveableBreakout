extends Node2D

var score = 0 setget set_score
const bricks = 59

func set_score(value):
	score = value
	print(score)
	if (score == bricks):
		get_tree().change_scene("res://Scenes/Menu.tscn")
