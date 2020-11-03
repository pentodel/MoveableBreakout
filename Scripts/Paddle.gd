extends KinematicBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var y = get_position().y
	var x = get_viewport().get_mouse_position().x
	set_position(Vector2(x,y))
