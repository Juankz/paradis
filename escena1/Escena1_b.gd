
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	var genero = get_node("/root/usuario_global").genero
	var nombre = get_node("/root/usuario_global").nombre
	var primera_frase=get_node("/root/textor").primerafrase(genero,nombre)
	get_node("gatit/Panel/Label").set_text(primera_frase)
	print("ready")

func _on_Area2D_area_enter( area ):
	get_node("TextureFrame").show()


func _on_Cuadro_fall():
	get_node("TextureFrame").hide()
	get_node("SamplePlayer").play("gata")

func _on_Area2D_area_exit( area ):
	get_node("TextureFrame").hide()


func _on_salida_area_enter( area ):
	print("Felicitaciones")
	get_node("AnimationPlayer").play("felicitaciones")


func _on_Cuadro1_fall():
	print("gato fall")
	get_node("SamplePlayer").play("gato")


func _on_Cuadro_2_fall():
	get_node("SamplePlayer").play("hombre")


func _on_Cuadro3_fall():
	get_node("SamplePlayer").play("mujer")

func _on_Cuadro4_fall():
	get_node("SamplePlayer").play("chica")

func _on_Cuadro5_fall():
	get_node("SamplePlayer").play("chico")
