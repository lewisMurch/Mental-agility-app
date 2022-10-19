extends Label #tells godot what object this script is meant for

onready var part1 = get_node("../../../QuestionBox/Question_part1") 
#loads values from other scripts - these values are called by the variable "part1"
onready var part2 = get_node("../../../QuestionBox/Question_part2") 
#loads values from other scripts - these values are called by the variable "part2"
onready var box = get_node("../../..") #loads values from other scripts - these values are called by the variable "box"

var correctPoints3 = 0 #creates a variable named "correctPoints3"
var wrongPoints3 = 0 #creates a variable named "wrongPoints3"

func _process(delta): #runs this code every frame
	if part1.box == 3: #if this box IS chosen to hold correct answer...
		var label2 = String(part1.multipleOne * part2.multipleTwo) #make it calculate the correct answer to display
		set_text(label2) #display the correct answer
	else: #if the box chosen to hold the correct asnswer is NOT this box...
		set_text(part1.wAns3) #Sets the text to a random WRONG number

func is_correct3(): #when they press the button to select this answer
	if get_text() == String(part1.multipleOne * part2.multipleTwo): #check if this box's text is the same as the correct answer
		correctPoints3 = correctPoints3 + 1 #add one point to the correct point score
	else: #if this box is selected and is NOT correct
		wrongPoints3 = wrongPoints3 + 1 #add one to the wrong point score
