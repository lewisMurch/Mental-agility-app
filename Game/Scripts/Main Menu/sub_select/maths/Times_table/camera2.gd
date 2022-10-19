extends Camera2D #tells godot what object this script is meant for

var format_string = (" ") #creates a variable named "format_string"
var actual_string = (" ")#creates a variable named "actual_string"
var remain_time = 60#creates a variable named "remain_time"

func timer_count():
	remain_time = (remain_time - 1) #reduces the time remaing by 1 every second 

func _ready(): #when the scene loads
	while remain_time != 0: #while there is time on the clock still
		yield(get_tree().create_timer(1), "timeout") #create a timer 
		timer_count() #run the timer function

	make_current() #switches the camera to this one

