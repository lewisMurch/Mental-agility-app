extends Label #tells godot what object this script is meant for

var format_string = (" ") #declears a variable, with a storage type of a string
var actual_string = (" ")#declears a variable, with a storage type of a string
var remain_time = 60 #creates a variable that represents the time remaining 

func timer_count(): #creates a funcion that 
	remain_time = (remain_time - 1) #removes a value of 1 each second
	format_string = ("%s seconds remaining") #the template for the label
	if remain_time != 1: #if the remaning time isnt 1
		actual_string = format_string % (remain_time) 
		#fills in the variable with the remaing time
		set_text(actual_string) #displays the remaning time to the user
	else: #if the remaing time is 1
		set_text("1 second remaining") #display "1 second remaning"


func _ready(): #when the scene first loads, run the code below
	while get_text() != "0 seconds remaining": 
		#while the text "0 seconds remaining" is displayed
		yield(get_tree().create_timer(1), "timeout") #create the timer
		timer_count() #run the timer count function
