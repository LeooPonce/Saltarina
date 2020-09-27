extends Area2D

var esta_activado = false

func _input(event):
	if event.is_action_pressed("pausa"):
		$AnimationPlayer.play("activado")

func _on_body_entered(body):
	if esta_activado:
		print("al siguiente nivel")
