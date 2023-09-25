extends RigidBody2D

@export var speed = 400

func _physics_process(delta):
	var movement = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		movement = Vector2.UP
	if Input.is_action_pressed("move_down"):
		movement = Vector2.DOWN
		
	linear_velocity = movement * speed
	
