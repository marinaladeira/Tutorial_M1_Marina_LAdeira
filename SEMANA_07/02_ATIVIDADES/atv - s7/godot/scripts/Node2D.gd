extends Node2D


var vel = 300
var pontos = 0




func _on_Timer_timeout():
	get_tree().change_scene("res://scripts/fim de jogo.tscn")
