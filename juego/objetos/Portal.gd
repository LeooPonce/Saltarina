extends Area2D

var esta_activado = false

#func _ready():
#	get_parent().connect("abrir_portal", self, "play_animacion")

func _on_body_entered(body):
	if esta_activado:
		print("al siguiente nivel")

func play_animacion():
	esta_activado = true
	$AnimatedSprite.play("default")
	$AnimationPlayer.play("activado")
