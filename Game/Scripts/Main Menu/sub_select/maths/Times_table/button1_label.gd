extends Label #tells godot what object this script is meant for

onready var part1 = get_node("../../../QuestionBox/Question_part1") 
#loads values from other scripts - these values are called by the variable "part1"

onready var part2 = get_node("../../../QuestionBox/Question_part2") 
#loads values from other scripts - these values are called by the variable "part2"

onready var box = get_node("../../..") 
#loads values from other scripts - these values are called by the variable "box"


var correctPoints1 = 0 #creates a variable named "correctPoints1"
var wrongPoints1 = 0 #creates a variable named "wrongPoints1"

func _process(delta): #runs this code every frame
	if part1.box == 1: #if this box IS chosen to hold correct answer...
		var label2 = String(part1.multipleOne * part2.multipleTwo) 
		#make it calculate the correct answer to display
		
		set_text(label2) #display the correct answer
	else: #if the box chosen to hold the correct asnswer is NOT this box...
		set_text(part1.wAns) #Sets the text to a random WRONG number

func is_correct1(): #when they press the button to select this answer
	if get_text() == String(part1.multipleOne * part2.multipleTwo): 
		#check if this box's text is the same as the correct answer
		
		correctPoints1 = correctPoints1 + 1 #add 1 point to the correct point score
	else: #if this box is selected and is NOT correct
		wrongPoints1 = wrongPoints1 + 1 #add 1 to the wrong point score
