
extends Camera2D

# member variables here, example:
# var a=2
export(NodePath) var objetivo_path
export(int) var ancho_escena = 4300
var objetivo
var ancho_ventana

func _ready():
	objetivo = get_node(objetivo_path)
	ancho_ventana = OS.get_window_size().width
	set_process(true)
	
func _process(delta):
	var pos = objetivo.get_pos()
	if(pos.x > ancho_ventana*0.5 && pos.x < ancho_escena - ancho_ventana*0.5):
		set_pos(objetivo.get_pos())

