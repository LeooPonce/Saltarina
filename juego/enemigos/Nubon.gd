extends Node2D

onready var detector_jugador = $Sprite/RayCast2D
onready var posiciones_disparo = $Sprite/PosicionesDisparo
onready var cadencia_disparo = $Timer

export var rayo: PackedScene

var puede_disparar = true

func _process(delta):
	if detector_jugador.is_colliding() and puede_disparar:
		disparar()
		puede_disparar = false
		cadencia_disparo.start()

func disparar():
	for posicion in posiciones_disparo.get_children():	
		var nuevo_rayo = rayo.instance()
		nuevo_rayo.crear(posicion.global_position)
		owner.get_node("Rayos").add_child(nuevo_rayo)


func _on_Timer_timeout():
	puede_disparar = true
