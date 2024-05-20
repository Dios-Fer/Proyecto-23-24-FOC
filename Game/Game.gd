extends Control
@onready var button = $Background/Tablero/HBoxContainer/Casilla8A/Button




# Called when the node enters the scene tree for the first time.
func _ready():
	$Background/Tablero/HBoxContainer/Casilla8A.init("8A", "Casilla2.png")
	$Background/Tablero/HBoxContainer/Casilla8B.init("8B", "Casilla1.png")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_button_pressed():
	print("inicial:"+button.get_parent().ID_CASILLA)
	button.get_parent().remove_child(button)
	$Background/Tablero/HBoxContainer/Casilla8B.add_child(button)
	button.position = Vector2(0, 0)
	print("final:"+button.get_parent().ID_CASILLA)
