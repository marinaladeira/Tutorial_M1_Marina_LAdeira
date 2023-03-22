extends Node2D

var vel = 300

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		$anime.play("atirar")
