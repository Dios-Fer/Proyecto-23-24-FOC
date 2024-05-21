extends Control
@onready var button = $Background/Tablero/Fila8/Casilla8A/Button2




# Called when the node enters the scene tree for the first time.
func _ready():
	var i=8
	var j=0
	
	
	for child in $Background/Tablero.get_children():
		if child is HBoxContainer:
			for child2 in child.get_children():
				j+=1
				if child2 is Casilla:
					child2.init(""+str(i)+letra(j), "Casilla2.png")
					#DEBUG
					print("Encontrado->"+str(i)+letra(j))
		i-=1
		j=0

	#$Background/Tablero/Fila8/Casilla8A.init("8A", "Casilla2.png")
	#$Background/Tablero/Fila8/Casilla8B.init("8B", "Casilla1.png")

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
