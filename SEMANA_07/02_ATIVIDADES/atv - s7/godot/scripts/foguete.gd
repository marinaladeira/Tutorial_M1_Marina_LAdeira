extends Node2D

var speed = 1000
var velocity = Vector2()

func _process(delta):
	velocity = Vector2()
	
	if Input.is_action_just_pressed("ui_right"):
		velocity.x +=1
	if Input.is_action_just_pressed("ui_left"):
		velocity.x -=1
	if Input.is_action_just_pressed("ui_down"):
		velocity.y +=1
	if Input.is_action_just_pressed("ui_up"):
		velocity.y -=1
	velocity = velocity.normalized()*speed
	position += velocity * delta
	



