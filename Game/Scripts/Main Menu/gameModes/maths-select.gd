extends Control #tells godot what object this script is meant for

var box = 1 #creates a variable named "box"

func _ready(): #when the scene loads
	randomize() #randomise the seed in godot
	box = randi()%4+1 #make a random number between 1 and 4, assign the variable to the variable "box"

func back_button(): #When a signal is generated via a button being pressed (game engine handels this)
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalMaths.tscn") #load to this scene

func _on_back_button_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalMaths.tscn") #load to this scene



