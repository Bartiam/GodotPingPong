extends CharacterBody2D

class_name Ball
@export var initialBallSpeed = 20
@export var speedMultiplier = 1.02

var ballSpeed = initialBallSpeed

func _ready():
	start_ball()

func _physics_process(delta):
	var collision = move_and_collide(velocity * ballSpeed * delta)
	
	if (collision):
		velocity = velocity.bounce(collision.get_normal()) * speedMultiplier

func start_ball():
	randomize()
	position = Vector2(640, 360)
	velocity.x = [-1, 1][randi() % 2] * initialBallSpeed
	velocity.y = [-.8, .8][randi() % 2] * initialBallSpeed
