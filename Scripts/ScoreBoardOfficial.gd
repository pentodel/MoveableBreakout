extends Control

onready var global = get_node("/root/Global")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Classic.text = "Classic: " + str(global.classic)
	$China.text = "China: " + str(global.china)
	$NewYork.text = "New York: " + str(global.newyork)
	$Iran.text = "Iran: " + str(global.iran)
	$Michigan.text = "Michigan: " + str(global.michigan)
	$Italy.text = "Italy: " + str(global.italy)
	$Florida.text = "Florida: " + str(global.florida)
	$Sweden.text = "Sweden: " + str(global.sweden)
	$Illinois.text = "Illinois: " + str(global.illinois)
	$California.text = "California: " + str(global.california)
	$USA.text = "USA: " + str(global.usa)


