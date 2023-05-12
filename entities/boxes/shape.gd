extends StaticBody2D


@export var max_hits := 1

@onready var label = $LabelNode/Label
@onready var labelNode = $LabelNode

func _ready():
	label.text = str(max_hits)
	labelNode.rotation -= rotation

func hit():
	max_hits -= 1
	label.text = str(max_hits)
	if max_hits <= 0:
		die()
		

func die():
	get_parent().shape_destroyed()
	queue_free()
