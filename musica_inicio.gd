
extends StreamPlayer

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	pass




func _on_musica_inicio_finished():
	get_node("Timer").start()


func _on_Timer_timeout():
	get_node("musica").play()
