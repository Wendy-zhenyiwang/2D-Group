extends CharacterBody2D

@export var speed = 5
const SPEED = 300.0
const JUMP_VELOCITY = -1000.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	print(direction)
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		if is_on_floor():
			$annimation.play("walk_left")
	
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
		if is_on_floor():
			$annimation.play("walk_right")
		
	else:
		if is_on_floor():
			$annimation.play("idle")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
		$annimation.play("jump_up_left")

	move_and_slide()
