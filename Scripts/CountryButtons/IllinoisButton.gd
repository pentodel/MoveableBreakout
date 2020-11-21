extends Button

var level = 7

# Called when the node enters the scene tree for the first time.
func _ready():
	var global = get_node("/root/Global")
	if (global.completed >= level):
		get_child(0).visible = false
	


func _on_Illinois_pressed():
	get_tree().change_scene("res://Scenes/Countries/8Illinois.tscn")
