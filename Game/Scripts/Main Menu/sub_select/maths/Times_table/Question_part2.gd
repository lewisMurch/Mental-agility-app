extends Label #tells godot what object this script is meant for

var multipleTwo = 1 #creates a variable named "multipleTwo"
var mTwo = "1" #creates a variable named "mTwo"
var storage2 = 0 #creates a variabled named "storage2"

func _randomize_question_p2(): # This creates a randomised number
	storage2 = multipleTwo #sets the variable "storage2" to "multipleTwo"
	randomize() #randomsies the seed for godot
	multipleTwo = randi()%12+1 #randomises number 2 (second part of maths question)
	mTwo = String(multipleTwo) #number 2 in string form

func set_randomized_question():#This sets the randomized number
	randomize()  #randomsies the seed for godot
	_randomize_question_p2() #runs the function listed
	set_text(mTwo)
	 #sets the text of the label to the variable "mTwo", which is a string version of a generated intiger
	
	
#FOR EACH BUTTON PRESSED:
func _on_Answer1_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	set_randomized_question() #run the code to randomise a value which then displays it to the user

func _on_Answer2_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	set_randomized_question() #run the code to randomise a value which then displays it to the user

func _on_Answer3_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	set_randomized_question() #run the code to randomise a value which then displays it to the user
	
func _on_Answer4_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	set_randomized_question() #run the code to randomise a value which then displays it to the user

