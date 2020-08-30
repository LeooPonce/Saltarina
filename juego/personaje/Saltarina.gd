extends KinematicBody2D


func _input(event):
	if event.is_action("salto"):
		print("saltar")
	
	if event.is_action_pressed("mov_derecha"):
		print("derecha")
	
	if event.is_action_released("mov_izquierda"):
		print("izquierda")
