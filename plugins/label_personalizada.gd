
extends Label

# member variables here, example:
# var a=2
# var b="textvar"
var font_size
var font

func _ready():
	font = get_font("font")
	print("font,height",font.get_height())
	print("font,width",font.get_string_size("texto"))
	pass

func _draw():
	draw_string(get_font("font"),Vector2(0,10),"texto",Color(1,1,0,1))
	draw_string(get_font("font"),Vector2(font.get_string_size("texto").x,10)," loco",Color(1,0,0,1))
