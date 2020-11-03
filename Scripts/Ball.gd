extends RigidBody2D

const minspeed = 50
const maxspeed = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if(body.is_in_group("Bricks")):
			body.queue_free()
		if(body.get_name() == "Paddle"):
			var speed = linear_velocity.length()
			var direction = get_position() - body.get_node("Point").get_global_position()
			var velocity = direction.normalized()*min(speed*minspeed, maxspeed)
			set_linear_velocity(velocity)
			
