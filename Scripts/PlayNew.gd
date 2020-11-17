extends Button

func _on_PlayNew_pressed():
	print("test")
	get_tree().change_scene("res://Scenes/SelectCOVIDLevel.tscn")
