extends Control #allows godot to know what this script is made for


func colour_game_button(): #When pressed the game engine sends a signal and runs the code below:
	get_tree().change_scene("res://Scenes/menu/Main_Menu/sub_select/agility/colourGame.tscn") #loads the scene
	
func back_button():
	get_tree().change_scene("res://Scenes/menu/Main_Menu/titleScreen.tscn") #goes back a scene

func BRTMT_button(): #When pressed the game engine sends a signal and runs the code below:
	get_tree().change_scene("res://Scenes/menu/Main_Menu/sub_select/agility/memoryTest.tscn") #loads the scene
