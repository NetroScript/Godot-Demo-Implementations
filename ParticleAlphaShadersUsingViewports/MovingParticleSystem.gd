class_name MovingParticleSystem
extends Sprite2D


var _interal_velocity := Vector2()
@onready
var particle_system := $SubViewport/GPUParticles2D


func _physics_process(delta):
	particle_system.position += delta * _interal_velocity
	
func set_velocity(velocity: Vector2) -> void:
	_interal_velocity = velocity
