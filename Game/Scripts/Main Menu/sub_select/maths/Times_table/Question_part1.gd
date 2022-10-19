extends Label #tells godot what object this script is meant for

var multipleOne = 1 #creates a variable named "multipleOne"
var mOne = "1" #creates a variable named "mOne"
var box = 1 #creates a variable named "box"
onready var part2 = get_node("../Question_part2")
#loads values from other scripts - these values are called by the variable "part2"

var wrongAns = 1 #creates a variable named "wrongAns"
var wAns = " " #creates a variable named "wAns"
var wrongAns2 = 2 #creates a variable named "wrongAns2"
var wAns2 = " " #creates a variable named "wAns2"
var wrongAns3 = 3 #creates a variable named "wrongAns3"
var wAns3 = " " #creates a variable named "wAns3"
var wrongAns4 = 4 #creates a variable named "wrongAns4"
var wAns4 = " " #creates a variable named "wAns4"
var storage1 = 0 #creates a variable named "storage1"

#AI variables
onready var aiQuestionP1 = get_node("../../accuracy_box/False")
#loads values from other scripts - these values are called by the variable "aiQuestionP1"

var aiOrRandom = 0 #creates a variable called "aiOrRandom"

func _randomize_question_p1(): #function for generating first part of the question
	storage1 = multipleOne #allows for other parts of the code to know the previous value
	randomize() #randomises the seed for godot
	aiOrRandom = randi()%2+1 #creates a random number between 1 and 2
	
	if aiOrRandom == 1: #if the program says that AI should make it "Hard"
		if aiQuestionP1.highestValuePos == 0: #if the question is a 0, make it random
			multipleOne = randi()%12+1 #randomises number 1 (first part of maths question)
		else: #if the value is valid
			multipleOne = aiQuestionP1.highestValuePos #make the question "hard" for the userA
		
	elif aiOrRandom == 2: #if the program says that it should be a random question
		randomize() #randomises the seed for godot
		multipleOne = randi()%12+1 #randomises number 1
		
	mOne = String(multipleOne) #number 1 in string form, ready for displaying to the user

func randomOthers(): #A function that ranbdomises values, these values cannot be the same as each other
	randomize() #randomises the seed for godot
	_randomize_question_p1() #runs the function listed
	set_text(mOne) #sets the text of the label to the variable "mOne", which is a string version of a generated intiger
	randomize() #randomises the seed for godot
	box = randi()%4+1 #makes a variable named box, assiging a random number between 1 and 12
	
	#randomsises a wrong answer which can't be the correct answer for the first button
	wrongAns = randi()%144+1 #creates a random number between 1 and 144
	while wrongAns == part2.multipleTwo * multipleOne: #while the fake possible answers are the same, re-randomise them
		randomize() #randomises the seed for godot
		wrongAns = randi()%144+1 #creates a random number between 1 and 144
	wAns = String(wrongAns) #creates a string based of the numerical value of the generated number
	
	#randomsises a wrong answer which can't be the correct answer for the second button
	wrongAns2 = randi()%144+1 #creates a random number between 1 and 144
	while wrongAns2 == part2.multipleTwo * multipleOne or wrongAns2 == wrongAns: 
		#while the fake possible answers are the same, re-randomise them
		randomize() #randomises the seed for godot
		wrongAns2 = randi()%144+1 #creates a random number between 1 and 144
	wAns2 = String(wrongAns2) #creates a string based of the numerical value of the generated number
	
	#randomsises a wrong answer which can't be the correct answer for the third button
	wrongAns3 = randi()%144+1 #creates a random number between 1 and 144
	while wrongAns3 == part2.multipleTwo * multipleOne or wrongAns3 == wrongAns or wrongAns3 == wrongAns2:
	#while the fake possible answers are the same, re-randomise them
		randomize() #randomises the seed for godot
		wrongAns3 = randi()%144+1 #creates a random number between 1 and 144
	wAns3 = String(wrongAns3) #creates a string based of the numerical value of the generated number
	
	#randomsises a wrong answer which can't be the correct answer for the fourth button
	wrongAns4 = randi()%144+1 #creates a random number between 1 and 144
	while wrongAns4 == part2.multipleTwo * multipleOne or wrongAns4 == wrongAns or wrongAns4 == wrongAns2 or wrongAns4 == wrongAns3:
	#while the fake possible answers are the same, re-randomise them
		randomize() #randomises the seed for godot
		wrongAns4 = randi()%144+1 #creates a random number between 1 and 144
	wAns4 = String(wrongAns4) #creates a string based of the numerical value of the generated number

func _on_Answer1_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	randomOthers() #run the code to randomise a value 

func _on_Answer3_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	randomOthers() #run the code to randomise a value 

func _on_Answer2_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	randomOthers() #run the code to randomise a value 

func _on_Answer4_pressed(): #When a signal is generated via a button being pressed (game engine handels this)
	randomOthers() #run the code to randomise a value 
