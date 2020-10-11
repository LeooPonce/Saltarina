extends Control


func _on_BotonIniciar_pressed():
	MusicaGlobal.replay()
	get_tree().change_scene("res://juego/niveles/Nivel1_v2.tscn")
