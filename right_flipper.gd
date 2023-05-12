extends "res://flipper.gd"


func _ready():
	ANGLE = 25

func _input(event):
	if event.is_action_pressed("right_flipper"):
		print("right")
		active = true
		rotation_degrees = ANGLE
		print(rotation_degrees)
		

	if event.is_action_released("right_flipper"):
		active = false
		rotation_degrees = 0
		print(rotation_degrees)
		
