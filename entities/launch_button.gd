extends Button


func _pressed():
	Events.emit_signal("launch_button_pressed")
