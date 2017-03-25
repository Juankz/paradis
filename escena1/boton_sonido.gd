
extends Button

# member variables here, example:
# var a=2
export(String) var pista = "gata"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass




func _on_Button_pressed():
	get_node("SamplePlayer2D").play(pista)