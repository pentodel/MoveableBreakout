extends Button

var level = 9

# Called when the node enters the scene tree for the first time.
func _ready():
	var global = get_node("/root/Global")
	if (global.completed >= level):
		get_child(0).visible = false
	


func _on_USA_pressed():
	get_tree().change_scene("res://Scenes/Countries/10USA.tscn")
