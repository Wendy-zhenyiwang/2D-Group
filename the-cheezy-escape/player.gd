extends CharacterBody2D

@export var speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	print("Hello")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		$annimation.play("walk_left")
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
		$annimation.play("walk_right")
		
	elif Input.is_action_pressed("ui_up"):
		velocity.y -= speed
		
	elif Input.is_action_pressed("ui_down"):
		velocity.y += speed
		
	else:
		$annimation.play("idle")
	move_and_slide()
		
		
		
		
		
