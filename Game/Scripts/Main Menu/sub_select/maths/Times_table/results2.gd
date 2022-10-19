extends Label #tells godot what object this script is meant for

onready var wrong_count = get_node("../accuracy_box/False") 
#loads values from other scripts - these values are called by the variable "wrong_count"
var remain_time = 30 #creates a variable named "remain_time"
var format_string = (" ") #creates a variable named "format_string"
var actual_string = (" ") #creates a variable named "actual_string"

func timer_count():
	remain_time = (remain_time - 1) #takes one second off every second

func _ready(): #when the scene loads
	while remain_time != 0: #while the timer is not 0
		yield(get_tree().create_timer(1), "timeout") #create a timer
		timer_count() #run the timer function
	
	var stringCPG = wrong_count.get_text() 
	#create a variable named "stringCPG", giving it the value of the wrong point amount
	format_string = ("%s") 
	#creates a place holder, essentially a variable for a string
	actual_string = format_string % (stringCPG)
	 #creates a string with a place holder, filling it in with the freshly assigned variable
	set_text(actual_string) #display the text just created

