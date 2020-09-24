extends Area2D

var esta_activado = false


func _on_body_entered(body):
	if esta_activado:
		print("al siguiente nivel")
