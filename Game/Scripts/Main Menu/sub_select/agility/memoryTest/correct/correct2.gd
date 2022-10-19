extends Polygon2D #tells godot what object this script is meant for

var red = Color( 1, 0, 0, 1 ) #creates a variable named "red" - this variable is a colour 
var green = Color( 0, 1, 0, 1 ) #creates a variable named "green" - this variable is a colour 
var grey = Color(0.647059,0.647059,0.647059,1) #creates a variable named "grey" - this variable is a colour 
onready var s4 = get_node("../s4/CollisionShape2D/Polygon2D") 
#loads values from other scripts - these values are called by the variable "s4"
onready var s5 = get_node("../s5/CollisionShape2D/Polygon2D")
 #loads values from other scripts - these values are called by the variable "s5"
onready var s6 = get_node("../s6/CollisionShape2D/Polygon2D") 
#loads values from other scripts - these values are called by the variable "s6"

func _physics_process(delta): #every frame, run the code below
	if get_color() == grey: #if the colour of the circle is grey
		
		if s4.correct == true: #if circle 4 is chosen to be correct
			set_color(green) #set the colour of the circle to be green
		elif s4.wrong == true: #if circle 4 is NOT chosen
			set_color(red) #set its colour to be red
			
		if s5.correct == true: #if circle 5 is chosen to be correct
			set_color(green) #set the colour of the circle to be green
		elif s5.wrong == true: #if circle 5 is NOT chosen
			set_color(red) #set its colour to be red
			
		if s6.correct == true: #if circle 6 is chosen to be correct
			set_color(green) #set the colour of the circle to be green
		elif s6.wrong == true: #if circle 6 is NOT chosen
			set_color(red) #set its colour to be red

	else:
		pass
