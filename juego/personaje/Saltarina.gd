extends KinematicBody2D

var velocidad = Vector2(150.0, 150.0)

func _physics_process(delta):
	var movimiento = velocidad * tomar_direccion()
	print(movimiento)
	move_and_slide(movimiento, Vector2.UP)

func tomar_direccion():
	var direccion = Vector2(Input.get_action_strength("mov_derecha") - Input.get_action_strength("mov_izquierda"), 1.0)
	return direccion
