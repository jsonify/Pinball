extends Area2D



func _on_body_entered(body):
	body.queue_free()
	$Timer.start(1)
	


func _on_timer_timeout():
	
	Events.emit_signal("ball_died")
