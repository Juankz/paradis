
extends Sprite

# member variables here, example:
# var a=2
export(NodePath) var area_gato_path
const velocidad_caida = 500
var area_gato
var caer = false
var focus = false
var y_origin
signal fall

func _ready():
	area_gato = get_node(area_gato_path)
	y_origin = get_pos().y
	set_process_input(true)
	set_process(true)

func _process(delta):
	if(caer && get_pos().y - y_origin < velocidad_caida):
		var y = get_pos().y
		y += velocidad_caida*delta
		set_pos(Vector2(get_pos().x,y))

func _input(event):
	if(event.type == InputEvent.MOUSE_BUTTON && event.pressed && focus):
		emit_signal("fall")
		get_node("AnimationPlayer").play("caer")
		caer = true

func _on_Area2D_area_enter( area ):
	print("entró algo al área")
	if(area == area_gato):
		get_node("AnimationPlayer").play("escalar")
		focus = true

func _on_Area2D_area_exit( area ):
	if(area == area_gato):
		get_node("AnimationPlayer").stop()
		focus = false
