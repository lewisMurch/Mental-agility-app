extends Node2D #tells godot what object this script is meant for

var choice = 0 #creates a variable called choice, setting its value to 0
var choice2 = 0 #creates a variable called choice2, setting its value to 0
var clickable = false #creates a variable called clickable, setting its value to false

func back_button(): #When a signal is generated via a button being pressed (game engine handels this)
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalAgility.tscn") 
	#changes the scene if the back bu tton is presesed

func _ready():
	randomize() #randomise the seed in godot
	choice = randi()%6+1 #make a random number between 1 and 6, assign the variable to the variable "choice"
	
	randomize() #randomise the seed in godot
	choice2 = randi()%6+1 #make a random number between 1 and 6, assign the variable to the variable "choice2"
	
	while choice == choice2: #while the 2 values generated are the same
		choice2 = randi()%6+1 #make a random number between 1 and 6, assign the variable to the variable "choice2"

	yield(get_tree().create_timer(8), "timeout") #create a timer
	timer_count() #take 1 second of the timer every second


func timer_count():
	clickable = true #lets the timer be clickable by the user 


func resfresh(): #When a signal is generated via a button being pressed (game engine handels this)
	get_tree().change_scene("res://Scenes/menu/Main_Menu/sub_select/agility/memoryTest.tscn") 
	#re-loads the same scene

