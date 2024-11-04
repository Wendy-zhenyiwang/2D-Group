extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_animation_finished():
	if animation == "pop":
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	# Replace with function body.
	play("pop")
	$collect.play()
