extends RigidBody2D

@export var speed := -1500

func _ready():
	Events.launch_button_pressed.connect(_on_launch_button_pressed)


func _on_launch_button_pressed():
	linear_velocity.y = speed
