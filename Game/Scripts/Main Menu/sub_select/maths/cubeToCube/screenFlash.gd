extends ColorRect #tells Godot what object this script is meant for

var c = 0 #create a varibale named "c"
var completed = false # create a variable named "completed"
var noColour = Color(0, 0, 0, 0) #create a variable that has no visibility 
onready var main_node = get_node("../..")
 #allows me to use infomation from other scripts (in this case, the script where button selection is coded)

func _process(delta): #run this function every frame
	if completed == false and main_node.winAnimation != 0: #if they have won & no colour show yet
		colourChangeGreen() #change the colour to green, gradually
		
	elif completed == false and main_node.lost == true: #if they lost & no colour shown yet
		colourChangeRed() #change the colour to red, gradually
		
	else:
		set_modulate(noColour) #set it to have no colour, so the user can see


func colourChangeGreen(): #function for changing the colour to green
	if completed == false: #if colour not already changed before
		c = c + 0.005 #incriment this value each frame
		var green = Color(0, 1, 0, c) #make slightly more visible each frame (increasing alpha)
		set_modulate(green) #set the colour to this value each frame
	
		if c >= 1.4: #if the aplha is over 1.4
			completed = true #set completed to true
			set_modulate(noColour) #give the foreground no colour again
			get_tree().change_scene("res://Scenes/menu/Main_Menu/sub_select/maths/cubeToCube.tscn") #reloads scene
			
func colourChangeRed(): #function for changing the colour to red
		if completed == false: #if colour not already changed before
			c = c + 0.005 #incriment this value each frame
			var red = Color(1, 0, 0, c) #make slightly more visible each frame (increasing alpha)
			set_modulate(red) #set the colour to this value each frame
	
		if c >= 1.4: #if the aplha is over 1.4
			completed = true #set completed to true
			set_modulate(noColour) #give the foreground no colour again
			get_tree().change_scene("res://Scenes/menu/Main_Menu/sub_select/maths/cubeToCube.tscn") #reloads scene


