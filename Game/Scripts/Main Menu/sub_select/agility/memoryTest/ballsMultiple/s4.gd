extends Polygon2D #tells godot what object this script is meant for

var show = 1 #creates a variable named "show"
var yellow = Color( 1, 1, 0, 1 ) #creates a vairable named "yellow" that stores a colour value
var red = Color( 1, 0, 0, 1 ) #creates a vairable named "red" that stores a colour value
onready var c = get_node("../../..") #creates a variable named "c" that allows for data to be gathered from another script
var pressed = false #creates a variable named "pressed" that holds a boolean value determining if something has been activated 
var correct = false #creates a variable named "correct" that holds a boolean value determining if something is correct
var wrong = false #creates a variable named "wrong" that holds a boolean value determining if somthing is wrong

func _ready(): #loads a script that is called upon starting the scene
		yield(get_tree().create_timer(2), "timeout") #creates a timer
		timer_count() #runs the timer function

func timer_count(): #when the timer runs out, run the code below
	show = 0 #sets the show varaible to "0", showing that the circles currently aren't in view

func _physics_process(delta): #runs the following function every frame
	if show > 0: #if the show time period is active, run the code below
		if c.choice == 4: #if this circle is chosen 
			set_color(yellow) #set the colour of the circle to yellow
		elif c.choice2 == 4:  #if this circle is chosen 
			set_color(yellow) #set the colour of the circle to yellow
		else: #if the circle isnt chosen
			set_color(red) #set the colour to red
	else: #no matter what, if the selected shouldn't been show, run the code below
		set_color(red) #show the circle as red

func _on_Button_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	if c.clickable == true: #if the button is active
		if pressed == false: #if it hasnt already been pressed
			if c.choice == 4: #if this circle is chosen and correct 
				correct = true #shows that the user selected the correct circle 
			elif c.choice2 == 4: #if this circle is chosen and correct
				correct = true #shows that the user selected the correct circle 
			else: #if this circle is chosen and wrong
				wrong = true #shows the user got the wrong answer
		else: #if the button has already been pressed
			pass #do nothing
		pressed = true #show that the user has made their choice

