extends CharacterBody2D

var ANGLE
var active = false

#func _input(event):
#	if event.is_action_pressed("left_flipper"):
#		print("left")
#		active = true
#		rotation_degrees = -ANGLE
#		print(rotation_degrees)
#
#	elif event.is_action_pressed("right_flipper"):
#		print("right")
#		active = true
#		rotation_degrees = ANGLE
#		print(rotation_degrees)
#
#
#	if event.is_action_released("left_flipper") or event.is_action_released("right_flipper"):
#		active = false
#		rotation_degrees = 0
#		print(rotation_degrees)
#

func _physics_process(delta):
	if active:
		rotation_degrees = clamp(rotation_degrees + delta * 1000 * ANGLE, -ANGLE, ANGLE)
	else:
		rotation_degrees = clamp(rotation_degrees - delta * 1000 * ANGLE, -ANGLE, ANGLE)
