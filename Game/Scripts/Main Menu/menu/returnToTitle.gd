extends Control #tells godot what object this script is meant for

func back_button():  #When the signal "back_button" is detected, the code below runs
	get_tree().change_scene("res://Scenes/menu/Main_Menu/titleScreen.tscn") #changes the scene


func times_tables_button(): #When the signal "times_table_button" is detected, the code below runs
	get_tree().change_scene("res://Scenes/menu/Main_Menu/sub_select/maths/timesTables.tscn") #changes the scene
	

func cubeToCube_button_(): #When the signal "cubeToCube" is detected, the code below runs
	get_tree().change_scene("res://Scenes/menu/Main_Menu/sub_select/maths/cubeToCube.tscn") #changes the scene

