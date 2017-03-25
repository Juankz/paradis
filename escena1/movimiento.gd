
extends AnimatedSprite

var posicion
export(float) var velocidad = 100


func _ready():
	posicion = self.get_pos()
	set_process(true)

func _process(delta):
	if(Input.is_key_pressed(KEY_LEFT)):
		posicion.x -= velocidad*delta
		set_animation("caminar")
		set_flip_h(true)
	elif(Input.is_key_pressed(KEY_RIGHT)):
		posicion.x += velocidad*delta
		set_animation("caminar")
		set_flip_h(false)
	else:
		set_animation("quieto")
	self.set_pos(posicion)


