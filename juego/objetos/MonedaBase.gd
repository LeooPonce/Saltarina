extends Area2D

onready var animacion := $AnimatedSprite

func _ready():
	animacion.play()
