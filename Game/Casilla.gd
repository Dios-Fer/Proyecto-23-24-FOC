extends Node2D

@onready var ID_CASILLA = ""
@onready var skinFicha = ""



# Called when the node enters the scene tree for the first time.
func _ready():
	var ruta = "res://Sprites/" + "Casilla2.png"
	print(ruta)
	$Sprite2D.texture=ResourceLoader.load(ruta)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
