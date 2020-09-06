extends KinematicBody2D



func _process(delta):
	if Input.is_action_pressed("salto"):
		print("Saltando")
	elif Input.is_action_just_pressed("mov_derecha"):
		print("derecha")
	elif Input.is_action_just_released("mov_izquierda"):
		print("izquierda")
