extends Spatial #tells godot what object this script is meant for

var correctAns = 0 #decleares a variable for a correct answer
var selection = 0 #declears a variable for a selection 
var winAnimation = 0 #declears a variable for winAnimation
var attempt = 0 #creates a variabe named "attempt"
var lost = false #creates a variable named "lost", which is a boolean 

func _ready(): #when the scene stars
	randomize() #randomises the seed for godot
	correctAns = randi()%4+1 #generates a random number between 1 and 4

func confirm_press(): #If the confirm button is pressed, run the indented code
	if attempt == 0: #if they haven't already submitted an answer
		if selection == correctAns: #if they confirm the correct base cube size
			winAnimation = correctAns #lets the cube do a win animation if its correct (this valued is used in another script)
			attempt = 1 #shows that the attempt has been made
		else: #if they confirm the wrong cube
			attempt = 1 #shows that the attempt has been made
			lost = true #shows the user has lost
		
func pressed_1(): #If the button "1 cubed" is pressed, run the indented code
	selection = 1 #sets the selection variable to the value of the button they pressed

func pressed_2(): #If the button "2 cubed" is pressed, run the indented code
	selection = 2 #sets the selection variable to the value of the button they pressed

func pressed_3(): #If the button "3 cubed" is pressed, run the indented code
	selection = 3 #sets the selection variable to the value of the button they pressed

func pressed_4(): #If the button "4 cubed" is pressed, run the indented code
	selection = 4 #sets the selection variable to the value of the button they pressed

func _on_back_button_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalMaths.tscn") #load into this scene
