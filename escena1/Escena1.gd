
extends Node2D

const _seleccionar_avatar = 0
const _leer_nombre = 1

var personaje_seleccionado = false
var estado

func _ready():
	estado = _seleccionar_avatar
	set_process_input(true)
	pass

func _input(event):
	if(estado == _seleccionar_avatar):
		if(event.type == InputEvent.MOUSE_BUTTON && event.is_pressed()):
			if(obtener_area(get_node("gatita")).has_point(event.pos)):
				seleccionar_avatar("F")
			elif(obtener_area(get_node("gatito")).has_point(event.pos)):
				seleccionar_avatar("M")
			update()
	elif(estado == _leer_nombre):
		pass
#		if(event.type == InputEvent.KEY && event.pressed):
#			get_node("collar/Sprite/LineEdit").grab_focus()
#			get_node("collar/Sprite/LineEdit").append_at_cursor(str(event.scancode))

func obtener_area(nodo):
	var area = nodo.get_item_rect()
	area.pos = nodo.get_pos()-area.size*nodo.get_scale()*0.5
	area.size *= nodo.get_scale()
	return area

func seleccionar_avatar(genero):
	if(!personaje_seleccionado):
		estado = _leer_nombre
		personaje_seleccionado = true
		get_node("/root/usuario_global").genero = genero
		get_node("AnimationPlayer").play("collar_aparece")
		get_node("collar/Sprite/LineEdit").set_cursor_pos(0)
		get_node("collar/Sprite/LineEdit").set_editable(true)
		get_node("collar/Sprite/LineEdit").grab_focus()
#func _draw():
#	draw_rect(obtener_area(get_node("Gato")),Color(0,1,1,1))


func _on_Button_pressed():
	if(personaje_seleccionado):
		estado = _seleccionar_avatar
		personaje_seleccionado = false
		get_node("collar/Sprite/LineEdit").set_cursor_pos(0)
		get_node("collar/Sprite/LineEdit").set_editable(false)
		get_node("collar/Sprite/LineEdit").release_focus()
		get_node("AnimationPlayer").play_backwards("collar_aparece")
	


func _on_ok_pressed():
	get_tree().change_scene("res://escena1/Escena1_b.tscn")
