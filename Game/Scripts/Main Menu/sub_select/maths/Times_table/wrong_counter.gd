extends Label #tells godot what object this script is meant for

onready var wrongPointImport1 = get_node("../../Answer_box/Answer1/Label_1") 
#creates a variable named "wrongPointImport1"
onready var wrongPointImport2 = get_node("../../Answer_box/Answer2/Label_2") 
#creates a variable named "wrongPointImport2"
onready var wrongPointImport3 = get_node("../../Answer_box/Answer3/Label_3") 
#creates a variable named "wrongPointImport3"
onready var wrongPointImport4 = get_node("../../Answer_box/Answer4/Label_4") 
#creates a variable named "wrongPointImport4"
var wrongPointGlobal = 0 #creates a variable named "wrongPointGlobal"
var stringWPG = " " #creates a variable named "stringWPG"
var format_string = " "  #creates a variable named "format_string"
var actual_string = " " #creates a variable named "actual_string"
var tempValue = 0 #creates a variable named "tempValue"
var aiList = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] #creates a variable named "aiList"
var highestValue = 0 #creates a variable named "highestValue"
var highestValuePos = 0 #creates a variable named "highestValuePos"


func _process(delta): #creates a function that runs every frame
	wrongPointGlobal = (wrongPointImport1.wrongPoints1) + (wrongPointImport2.wrongPoints2) + (wrongPointImport3.wrongPoints3) + (wrongPointImport4.wrongPoints4)
	#creates a total for the wrong points
	stringWPG = String(wrongPointGlobal) #turns the total wrong count into text
	format_string = ("You have got: %s wrong") #formats the text
	actual_string = format_string % (stringWPG) #fills in the variable located in the text 
	set_text(actual_string) #displays the final message
	
	#AI BELOW
	var qPart1 = get_node("../../QuestionBox/Question_part1") 
	#opens a path to question creation script #1
	var qPart2 = get_node("../../QuestionBox/Question_part2") 
	#opens a path to question creation script #2
	if wrongPointGlobal > tempValue: #if they click the wrong answer
		
		aiList[qPart1.storage1] = aiList[qPart1.storage1] + 1 
		#adds one to the correct position in the list
		aiList[qPart2.storage2] = aiList[qPart2.storage2] + 1 
		#adds one to the correct position in the list
		highestValue = aiList.max() 
		#finds the highest value in the list, and assign that value to a variable 
		highestValuePos = aiList.find(highestValue) 
		#finds that variables place in the list
		tempValue = wrongPointGlobal 
		#update value to allow us to see if they get the next item wrong 
		
