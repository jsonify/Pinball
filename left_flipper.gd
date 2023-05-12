extends "res://flipper.gd"


func _ready():
	ANGLE = 155

func _input(event):
	if event.is_action_pressed("left_flipper"):
		print("left")
		active = true
		rotation_degrees = -ANGLE
		print(rotation_degrees)
		
		

	if event.is_action_released("left_flipper"):
		active = false
		rotation_degrees = 0
		print(rotation_degrees)
		
