extends Control #tells godot what object this script is made for
var box = 1 #creates a variable named "box"

func _ready(): #when the scene starts up
	randomize() #randomise the seed for godot to create random numbers
	box = randi()%4+1 #create a random number between 1 and 4, and assign this vairable to "box"

func back_button(): #when the back button is pressed
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalAgility.tscn") #change the scene

#ignore
func _on_back_button_pressed():
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalAgility.tscn")




