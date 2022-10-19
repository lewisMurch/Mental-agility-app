extends Control #allows godot to know what this script is made for

func back_button():
	get_tree().change_scene("res://Scenes/menu/Main_Menu/titleScreen.tscn") #goes back a scene (loads main menu)
