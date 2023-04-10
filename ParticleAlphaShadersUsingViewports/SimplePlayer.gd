extends Sprite2D


@export var speed := 400

var velocity := Vector2();
@onready
var particles : MovingParticleSystem = $ParticleSystemHolder as MovingParticleSystem

func get_input():
	var input_direction := Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta : float):
	get_input()
	position += delta * velocity;
	
	particles.set_velocity(velocity)



