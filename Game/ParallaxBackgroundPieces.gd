extends ParallaxBackground


var DIR = Vector2 (1, 0)
var speed = 120

func _physics_process(delta):
	scroll_base_offset += DIR * (-speed)  * delta
