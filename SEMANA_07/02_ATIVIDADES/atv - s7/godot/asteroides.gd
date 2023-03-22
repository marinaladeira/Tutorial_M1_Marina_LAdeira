extends Node2D

export (int) var speed = 70
var input_vector = Vector2.ZERO
signal detruido
var pontos = 0


func _physics_process(delta):
	global_position.y +=  speed * delta


func _on_Node2D_area_entered(area):
	queue_free()
	
