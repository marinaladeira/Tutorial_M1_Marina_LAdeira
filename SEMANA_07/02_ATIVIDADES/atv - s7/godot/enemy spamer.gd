extends Node2D

var spawn_positions = null

var Enemy = preload("res://scripts/asteroides.tscn")

func _ready():
	randomize()
	spawn_positions = $spampositions.get_children()
	
func spawn_enemy():
	var index = randi() % spawn_positions.size()
	var enemy = Enemy.instance()
	enemy.position = spawn_positions[index].position
	add_child(enemy)
	
func _on_Timer_timeout():
	spawn_enemy()
