
extends Sprite

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _draw():
	draw_rect(self.get_item_rect(),Color(0,1,0,0.5))