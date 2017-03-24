
extends Sprite

signal on_touch

func _ready():
	# Called every time the node is added to the scene.
	set_process_unhandled_input(true)
	pass

func _input(event):
	if(event.type == InputEvent.MOUSE_BUTTON):
		if(self.get_item_rect().has_point(event.pos)):
			print("Gato")
			emit_signal("on_touch")
			update()

func _draw():
	draw_rect(self.get_item_rect(),Color(1,1,0,0.5))
