extends KinematicBody2D

const ball_scene = preload("res://SceneObjects/Ball.tscn")
onready var global = get_node("/root/Global")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_process_input(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var y = get_position().y
	var x = get_viewport().get_mouse_position().x
	set_position(Vector2(x,y))

func _input(event):
	if (event is InputEventMouseButton && event.is_pressed()) || (event is InputEventKey && event.scancode == KEY_SPACE):
		var all_balls = get_tree().get_nodes_in_group("Balls")
		if len(all_balls) < 1:
			var ball = ball_scene.instance()
			global.currentscore += 1
			ball.set_position(get_position() - Vector2(0,10))
			get_tree().get_root().add_child(ball)
	if (event is InputEventKey && event.scancode == KEY_Q):
		var all_balls = get_tree().get_nodes_in_group("Balls")
		for ball in all_balls:
			ball.queue_free()

