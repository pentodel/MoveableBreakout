extends Button

#var global = get_node("/root/GlobalData")
#if (global.available_level >= 1):
#	get_node("/root/LevelSelect/Control/NewYork/inactiveny").queue_free()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_New_York_pressed():
	get_tree().change_scene("res://Scenes/SelectCOVIDLevel.tscn")
