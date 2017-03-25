
extends AnimatedSprite

var posicion
var ancho_ventana
var l = false
var r = false
export(int) var ancho_escena = 4300
export(float) var velocidad = 100


func _ready():
	posicion = self.get_pos()
	ancho_ventana = OS.get_window_size().width
	set_process(true)

func _process(delta):
	posicion = self.get_pos()
	if(Input.is_key_pressed(KEY_LEFT) or l):
		posicion.x -= velocidad*delta
		set_animation("caminar")
		set_flip_h(true)
	elif(Input.is_key_pressed(KEY_RIGHT) or r):
		posicion.x += velocidad*delta
		set_animation("caminar")
		set_flip_h(false)
	else:
		set_animation("quieto")
	if(posicion.x > 0 && posicion.x < ancho_escena - ancho_ventana*0.5):
		self.set_pos(posicion)
#	elif(posicion.x < 0):
#		self.set_pos(Vector2(0,posicion.y))
#	else:
#		self.set_pos(Vector2(ancho_escena - ancho_ventana*0.5,posicion.y))

func _on_der_input_event( ev ):
	if(ev.type==InputEvent.MOUSE_BUTTON):
		if(ev.pressed):
			r=true
		else:
			r=false


func _on_izq_input_event( ev ):
	if(ev.type==InputEvent.MOUSE_BUTTON):
		if(ev.pressed):
			l=true
		else:
			l=false
