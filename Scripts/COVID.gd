extends RigidBody2D

const minspeed = 200
const maxspeed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if (body.is_in_group("Bricks")):
			$sneeze.play()
			get_node("/root/World").score += 1
			body.queue_free()
		elif (body.get_name() == "CVPaddle"):
			var speed = get_linear_velocity().length()
			var direction = get_position() - body.get_node("Point").get_global_position()
			var velocity = direction.normalized()*min(speed*minspeed, maxspeed)
			set_linear_velocity(velocity)
			$hit.play()
		else:
			$hit.play()
	if (get_position().y > get_viewport_rect().end.y) || (get_position().y < get_viewport_rect().position.y) || (get_position().x > get_viewport_rect().end.x) || (get_position().x < get_viewport_rect().position.y):
		queue_free()

