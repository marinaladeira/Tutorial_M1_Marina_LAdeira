extends Node2D

var velocity = Vector2()
var speed = 500
const PRELASER= preload("res://scripts/laser.tscn")

func _ready():
	pass 
	
func _process(delta):
	velocity = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		velocity.x +=1
	if Input.is_action_pressed("ui_left"):
		velocity.x -=1
	if Input.is_action_pressed("ui_down"):
		velocity.y +=1
	if Input.is_action_pressed("ui_up"):
		velocity.y -=1
	velocity = velocity.normalized()*speed
	position += velocity * delta


