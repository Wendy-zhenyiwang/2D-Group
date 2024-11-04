extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _on_area_2dbody_entered(body):
	play("pop")
	$SoundEffect.play()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_animation_finished():
	if animation == "pop":
		queue_free()
