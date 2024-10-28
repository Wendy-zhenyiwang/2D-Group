extends Node2D

@export var speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	print("Hello")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	
	if Input.is_action_pressed("ui_left"):
		position.x -= speed
		$annimation.play("walk_left")
		
	elif Input.is_action_pressed("ui_right"):
		position.x += speed
		$annimation.play("walk_right")
		
	elif Input.is_action_pressed("ui_up"):
		position.y -= speed
		
	elif Input.is_action_pressed("ui_down"):
		position.y += speed
		
	else:
		$annimation.play("idle")
		
		
		
		
		
		
