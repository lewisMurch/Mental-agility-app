extends Control #tells godot what object this script is meant for

var isMuted = 0 #variable used to check if the user has the app muted

func _ready(): # Called when the node enters the scene tree for the first time.
	for button in $Container.get_children(): #For each button in the container (mental maths and mental agility), run the code below
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load]) #when button is pressed, load the scene saved

#This chanegs the scene to the chosen one defined by the button.
func _on_Button_pressed(scene_to_load): #When a signal is generated via a button being pressed (game engine handels this)
	get_tree().change_scene(scene_to_load) #load the scene saved

#mute button code
func _on_muteButton_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	isMuted = isMuted + 1 #adds a value of one to the muted value
	var even = (isMuted % 2) #creates a variable to check if the value is even
	if even == 0: #if it is even, run the code below
		AudioServer.set_stream_global_volume_scale(1) #sets audio levels to 1, meaning its not muted
	else:#if it isn't even 
		AudioServer.set_stream_global_volume_scale(0) #sets audio levels to 0, meaning its muted


func personal_stats_button(): #once clicked, run the code below
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/personalStats.tscn") #load the scene specified 

