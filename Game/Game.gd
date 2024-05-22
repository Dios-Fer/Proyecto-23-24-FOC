extends Control
@onready var button = $Background/Tablero/Fila8/Casilla8A/Button2


# Called when the node enters the scene tree for the first time.
func _ready():
	var i=8
	var j=0
	var casilla="";
	var casillaBlanca="Casilla2.png";
	var casillaNegra="Casilla1.png";
	var newSkinThis="this1.png";
	var newSkinAttack="attack1.png";
	var newSkinMov="move1.png";
	#Recorremos el tablero en busca de filas
	for child in $Background/Tablero.get_children():
		if child is HBoxContainer: 
			#Recorremos las filas en busca de Casillas
			for child2 in child.get_children():
				if child2 is Casilla:
					j+=1
					#Designamos la skin de la ficha
					if (j%2!=0 && i%2==0):
						casilla = casillaBlanca;
					elif (j%2==0 && i%2!=0):
						casilla = casillaBlanca;
					else:
						casilla = casillaNegra;
					#Inicializamos la ficha
					child2.init(""+str(i)+letra(j), casilla, newSkinThis, newSkinAttack, newSkinMov)
					
					#DEBUG
					#print("Encontrado->"+str(i)+letra(j)+"--->"+casilla)
		i-=1
		j=0


#Funcion para obtener la letra de la casilla con el numero de esta en el eje x
func letra (num):
	var letra = ""
	if (num==1):
		letra="A"
	elif (num==2):
		letra="B"
	elif (num==3):
		letra="C"
	elif (num==4):
		letra="D"
	elif (num==5):
		letra="E"
	elif (num==6):
		letra="F"
	elif (num==7):
		letra="G"
	elif (num==8):
		letra="H"
	return letra

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_button_pressed():
	print("inicial:"+button.get_parent().ID_CASILLA)
	button.get_parent().remove_child(button)
	$Background/Tablero/Fila8/Casilla8B.add_child(button)
	button.position = Vector2(0, 0)
	print("final:"+button.get_parent().ID_CASILLA)
	$Background/Tablero/Fila8/Casilla8B.setPosition()
