extends RigidBody2D

@export var move_speed := 80
var set_up = true
var direction := 0

func _physics_process(delta):
	if set_up:
		direction = Input.get_axis("ui_left", "ui_right")
		linear_velocity = Vector2(move_speed * direction, 0)
		if Input.is_action_pressed("space"):
			gravity_scale = 1.0
			set_up = false
	
	if len(get_colliding_bodies()) > 0:
		if get_colliding_bodies()[0].is_in_group("shape"):
			get_colliding_bodies()[0].hit()
	
