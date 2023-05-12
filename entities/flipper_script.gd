extends RigidBody2D

#@onready var marker2d = $
var rotate_speed = 10.0

func _ready():
#    set_pivot_offset(Vector2(0, -48)) # Set the pivot point to the bottom center of the flipper
	pass
	
func _process(delta):
	if Input.is_action_pressed("flipper_left"):
		rotate(-rotate_speed * delta) # Rotate the flipper counterclockwise
	elif Input.is_action_pressed("flipper_right"):
		rotate(rotate_speed * delta) # Rotate the flipper clockwise
