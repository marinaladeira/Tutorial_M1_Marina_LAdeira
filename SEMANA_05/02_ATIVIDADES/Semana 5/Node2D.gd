extends Node2D


var teste = false
var valor = 0
var numero = 0 #nao pode acento em váriavel
var lista = [] #estava sem var
var nome 
var cont
var i

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #faltou o cifrão 
	nome=str($LineEdit.text) #faltou criar a variavel, inverter a ordem e adicionar a string
	print(nome) #faltou o print

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	numero = int($LineEdit.text)
	lista.append(numero) #tirar a letra maiuscula
	print(lista) #sem for fica mais fácil


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	cont = 0
	i = 0
	while i < len(lista):
		if lista[i] % 2 == 1:
			cont += 1
		i += 1
	if cont != 0:
		nome = nome + "baldo"
	$texto.text = nome
