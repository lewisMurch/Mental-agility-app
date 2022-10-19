extends Control #tells godot what object this script is meant for


func main_menu():
	get_tree().change_scene("res://Scenes/menu/Main_Menu/titleScreen.tscn") #load the specified scene
