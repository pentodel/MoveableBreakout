extends Button

var status = "on"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SoundControl_pressed():
	if (status == "on"):
		status = "off"
		print("turning sound off")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)  
		set_text("TURN SOUND ON") 
	elif (status == "off"):
		status = "on"
		print("turning sound on")
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)  
		set_text("TURN SOUND OFF") 
