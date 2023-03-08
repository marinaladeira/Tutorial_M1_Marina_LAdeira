extends Node2D


var lista = ["item 1","item 2", "item 3 "]
var lista2=[]
var texto="marina"
var texto2="mereço um 10"




func _on_Button_pressed():
	$resultado1.text=str(lista)


func _on_Button2_pressed():
	lista2.append(str($texto.text))
	$resultado2.text=str(lista2)
	


func _on_Button3_pressed():
	$resultado3.text=str(texto2)


func _on_Button4_pressed():
	lista2.append(str(texto2))
	$resultado4.text=str(lista2)
