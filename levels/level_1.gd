extends Node2D

var ball_count := 3
var balls := []
var current_ball = null
var ball_start_position = Vector2(560, 955)

func _ready():
	# Instantiate the first ball and add it to the scene
	var ball = preload("res://entities/ball.tscn").instantiate()
	ball.position = ball_start_position
	balls.append(ball)
	add_child(ball)

#	Events.launch_button_pressed.connect(on_launch_button_pressed)
	Events.ball_died.connect(on_ball_died)

func on_launch_button_pressed():
	print("ball count: ", ball_count)
	if current_ball == null and balls.size() > 0:
		current_ball = balls[0]
		current_ball.gravity_scale = 1
		current_ball.linear_velocity.y = -1500


func on_ball_died():
	ball_count -= 1
	if current_ball != null:
		current_ball.queue_free()

	if ball_count > 0:	
		new_ball()
	else:
		# game over logic
		pass

func new_ball():
	current_ball = preload("res://entities/ball.tscn").instantiate()
	current_ball.position = ball_start_position
	current_ball.gravity_scale = 1
	current_ball.linear_velocity = Vector2.ZERO
	add_child(current_ball)
