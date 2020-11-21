extends Button


var level = 4

# Called when the node enters the scene tree for the first time.
func _ready():
	var global = get_node("/root/Global")
	if (global.completed >= level):
		get_child(0).visible = false
	


func _on_Italy_pressed():
	get_tree().change_scene("res://Scenes/Countries/5Italy.tscn")
