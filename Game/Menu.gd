extends Control


# Funcion llamada al inicio
func _ready():
	$ParallaxBackground.speed = 0

# Funcion de actualizacion
func _process(delta):
	pass

# Actual boton de cerrar sesion
func _on_cerrar_pressed():
	Firebase.Auth.logout()
	get_tree().change_scene_to_file("res://Autentication.tscn")


# Boton para ir a la pantalla del perfil
func _on_perfil_pressed():
	get_tree().change_scene_to_file("res://Perfil.tscn")
