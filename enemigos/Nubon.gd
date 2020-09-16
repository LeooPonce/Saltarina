extends Node2D

onready var detector_jugador = $Sprite/RayCast2D

func _process(delta):
	if detector_jugador.is_colliding():
		print("vi al jugador")
