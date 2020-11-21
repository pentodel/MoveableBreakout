extends Button

var level = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	var global = get_node("/root/Global")
	if (global.completed >= level):
		get_child(0).visible = false
	


func _on_Iran_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Countries/3Iran.tscn")
