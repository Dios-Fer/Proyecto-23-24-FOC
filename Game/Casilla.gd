extends Node2D

@onready var ID_CASILLA = ""
@onready var skinFicha = ""


func init(newID_CASILLA, newskinFicha):
	ID_CASILLA = newID_CASILLA
	skinFicha = newskinFicha
	var ruta = "res://Sprites/" + skinFicha
	$Sprite2D.texture=ResourceLoader.load(ruta)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


