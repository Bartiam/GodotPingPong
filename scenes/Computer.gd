extends RigidBody2D

@export var paddle_speed = 800

func _ready():
	position = Vector2(1240, 360)

func _physics_process(delta):
	var direction = ($"../Ball".position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed
