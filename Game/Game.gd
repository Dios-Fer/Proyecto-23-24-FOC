extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Background/Tablero/HBoxContainer/Casilla1A.skinFicha = "Casilla2.png"
	$Background/Tablero/HBoxContainer/Casilla1A.ID_CASILLA = "1A"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
