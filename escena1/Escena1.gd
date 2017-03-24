
extends Node2D

# member variables here, example:
# var a=2

func _ready():
	# Called every time the node is added to the scene.
	set_process_input(true)
	pass

func _input(event):
	if(event.type == InputEvent.MOUSE_BUTTON && event.is_pressed()):
		if(obtener_area(get_node("Gata")).has_point(event.pos)):
			get_node("/root/usuario_global").genero = "F"
			print("Se seleccionó una gata")
		elif(obtener_area(get_node("Gato")).has_point(event.pos)):
			get_node("/root/usuario_global").genero = "M"
			print("Se seleccionó un gato")
		update()

func obtener_area(nodo):
	var area = nodo.get_item_rect()
	area.pos = nodo.get_pos()-area.size*nodo.get_scale()*0.5
	area.size *= nodo.get_scale()
	return area

#func _draw():
#	draw_rect(obtener_area(get_node("Gata")),Color(0,1,0,1))
#	draw_rect(obtener_area(get_node("Gato")),Color(0,1,1,1))
