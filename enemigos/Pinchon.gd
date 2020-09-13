extends KinematicBody2D

export var velocidad = 100.0

var gravedad = 100.0
var movimiento = Vector2.ZERO

onready var animacion = $AnimatedSprite
onready var detector_vacio = $DetectorVacio

func _physics_process(delta):
	caer()
	caminar()
	
	move_and_slide(movimiento, Vector2.UP)

func caer():
	if not is_on_floor():
		movimiento.y = gravedad

func caminar():
	if not animacion.is_playing():
		animacion.play("caminar")
	
	if not detector_vacio.is_colliding():
		velocidad *= -1
		detector_vacio.position *= -1
		animar(animacion.flip_h)
	
	movimiento.x = velocidad

func animar(valor_actual):
	animacion.flip_h = !valor_actual


