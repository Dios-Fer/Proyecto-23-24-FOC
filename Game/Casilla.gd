extends Node2D
class_name Casilla

@onready var ID_CASILLA = ""
@onready var skinFicha = ""


func init(newID_CASILLA, newskinFicha, newSkinThis, newSkinAttack, newSkinMov):
	ID_CASILLA = newID_CASILLA
	skinFicha = newskinFicha
	var ruta = "res://Sprites/" + skinFicha
	$Fondo.texture=ResourceLoader.load(ruta)
	ruta = "res://Sprites/" + newSkinThis
	$Fondo/posicionIni.texture=ResourceLoader.load(ruta)
	ruta = "res://Sprites/" + newSkinMov
	$Fondo/posibleMov.texture=ResourceLoader.load(ruta)
	ruta = "res://Sprites/" + newSkinAttack
	$Fondo/posibleAttack.texture=ResourceLoader.load(ruta)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func clearStatus ():
	$Fondo/posicionIni.visible = false
	$Fondo/posibleMov.visible = false
	$Fondo/posibleAttack.visible = false

func setPosibleAtaque():
	$Fondo/posibleAttack.visible=true

func setPosibleMov():
	$Fondo/posibleMov.visible=true

func setPosition():
	$Fondo/posicionIni.visible=true
