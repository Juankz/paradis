
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass




func _on_Area2D_area_enter( area ):
	get_node("TextureFrame").show()


func _on_Cuadro_fall():
	get_node("TextureFrame").hide()
