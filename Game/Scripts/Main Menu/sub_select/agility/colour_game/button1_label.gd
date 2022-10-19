extends RichTextLabel #tells godot what object the script is made for

onready var part1 = get_node("../../../QuestionBox/questionnn") 
#get data from this scene via a variable named "part1"

var correctPoints = 0 #create a variable named "correctPoints" that has a place holder value of 0
var wrongPoints = 0 #create a variable named "wrongPoints" that has a place holder value of 0

func _process(delta): #run this function every frame
	if part1.box == 1: #if the chosen box is 1 (the box this script is attached to)...
		set_text(part1.selectedColourNumber) #set the text to be the correct answer
	else: #if it isn't the chosen box
		set_text(part1.wrongAns) #set the text to be a random wrong answer
	
func Answer1_pressed(): #if this button is pressed
	if get_text() == part1.selectedColourNumber: #if this answer is equal to the chosen correct answer
		correctPoints = correctPoints + 1 #add one to the point score
	else: #if it is not equal to the correct answer
		wrongPoints = wrongPoints + 1 #add one to the wrong points score
	part1.Qsetter() #run the question setter command from the other script
	

