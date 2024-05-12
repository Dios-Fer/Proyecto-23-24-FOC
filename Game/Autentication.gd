extends Control


# Funcion llamada al inicio
func _ready():
	Firebase.Auth.login_succeeded.connect(on_login_succeeded)
	Firebase.Auth.signup_succeeded.connect(on_signup_succeeded)
	Firebase.Auth.login_failed.connect(on_login_failed)
	Firebase.Auth.signup_failed.connect(on_signup_failed)
	
	if Firebase.Auth.check_auth_file():
		$VBoxContainer/StateLabel.text = "Accedido"
		#get_tree().change_scene_to_file("res://Menu.tscn")


# Funcion de actualizacion
func _process(delta):
	pass


func _on_login_button_pressed():
	var email = $VBoxContainer/EmailEdit.text
	var password = $VBoxContainer/PasswordEdit.text
	Firebase.Auth.login_with_email_and_password(email, password)
	$VBoxContainer/StateLabel.text = "Accediendo"

func _on_signup_button_pressed():
	var email = $VBoxContainer/EmailEdit.text
	var password = $VBoxContainer/PasswordEdit.text
	Firebase.Auth.signup_with_email_and_password(email, password)
	$VBoxContainer/StateLabel.text = "Registrado"

func on_login_succeeded(auth):
	print(auth)
	$VBoxContainer/StateLabel.text = "Accedido"
	Firebase.Auth.save_auth(auth)
	#get_tree().change_scene_to_file("res://Menu.tscn")
	
func on_signup_succeeded(auth):
	print(auth)
	$VBoxContainer/StateLabel.text = "Registro completado"
	Firebase.Auth.save_auth(auth)
	#get_tree().change_scene_to_file("res://Menu.tscn")
	
func on_login_failed(error_code, message):
	print(error_code)
	print(message)
	$VBoxContainer/StateLabel.text = "Acceso fallido: %s" % message
	
func on_signup_failed(error_code, message):
	print(error_code)
	print(message)
	$VBoxContainer/StateLabel.text = "Registro fallido: %s" % message
