extends Polygon2D #tells godot what object this script is meant for

var red = Color( 1, 0, 0, 1 ) #creates a variable named "red" - this variable is a colour 
var green = Color( 0, 1, 0, 1 ) #creates a variable named "green" - this variable is a colour 
var grey = Color(0.647059,0.647059,0.647059,1) #creates a variable named "grey" - this variable is a colour 
onready var s1 = get_node("../s1/CollisionShape2D/Polygon2D") 
#loads values from other scripts - these values are called by the variable "s1"
onready var s2 = get_node("../s2/CollisionShape2D/Polygon2D") 
#loads values from other scripts - these values are called by the variable "s2"
onready var s3 = get_node("../s3/CollisionShape2D/Polygon2D")
 #loads values from other scripts - these values are called by the variable "s3"

func _physics_process(delta): #every frame, run the code below
	if get_color() == grey: #if the colour of the circle is grey
		
		if s1.correct == true: #if circle 1 is chosen to be correct
			set_color(green) #set the colour of the circle to be green
		elif s1.wrong == true: #if circle 1 is NOT chosen
			set_color(red) #set its colour to be red
			
		if s2.correct == true: #if circle 2 is chosen to be correct
			set_color(green) #set the colour of the circle to be green
		elif s2.wrong == true: #if circle 2 is NOT chosen
			set_color(red) #set its colour to be red
			
		if s3.correct == true: #if circle 3 is chosen to be correct
			set_color(green) #set the colour of the circle to be green
		elif s3.wrong == true: #if circle 3 is NOT chosen
			set_color(red) #set its colour to be red
			
	else:
		pass
