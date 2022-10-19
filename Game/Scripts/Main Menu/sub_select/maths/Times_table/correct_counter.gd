extends Label #tells godot what object this script is meant for

var bestScore = 0 setget set_bestScore #creates a variable named ""
const filePath = "user:///bestScore.data" #creates a constant named ""
onready var correctPointImport1 = get_node("../../Answer_box/Answer1/Label_1") 
#loads values from other scripts - these values are called by the variable "correctPointImport1"

onready var correctPointImport2 = get_node("../../Answer_box/Answer2/Label_2") 
#loads values from other scripts - these values are called by the variable "correctPointImport2"

onready var correctPointImport3 = get_node("../../Answer_box/Answer3/Label_3") 
#loads values from other scripts - these values are called by the variable "correctPointImport3"

onready var correctPointImport4 = get_node("../../Answer_box/Answer4/Label_4")
#loads values from other scripts - these values are called by the variable "correctPointImport4"

var correctPointGlobal = 0 #creates a variable named "correctPointGlobal"
var stringCPG = (" ") #creates a variable named "stringCPG"
var format_string = (" ") #creates a variable named "format_string"
var actual_string = (" ") #creates a variable named "actual_string"
var score_to_use_elsewhere = 0 #creates a variable named "score_to_use_elsewhere"
var remain_time = 60 #creates a variable named "remain_time"
var tempHS = 0

func load_bestScore(): #A function that loads data to a file, named file
	var file = File.new() #creates a variable named "file"
	if not file.file_exists(filePath): return #create the file if it does not already exist
	file.open(filePath, File.READ) #open the file and read its contents
	bestScore = file.get_var() #sets the bestScore variable to be the highest saved score
	file.close() #close the file

func save_bestScore(): #A function that loads data to a file, named file 
	var file = File.new() #creates a variable named "file"
	file.open(filePath, file.WRITE) #opens the file, ready for writing
	file.store_var(bestScore) #saves the high score to the file for later use
	file.close() #closes the file
	
func set_bestScore(new_value): #A function that saves the highest score achived to the fle
	bestScore = new_value #sets the highest score achived in a game to be fed into the file saving function
	save_bestScore() #runs the file saving function


func _process(delta): #run this function every frame
	correctPointGlobal = (correctPointImport1.correctPoints1) + (correctPointImport2.correctPoints2) + (correctPointImport3.correctPoints3) + (correctPointImport4.correctPoints4)
	#adds up all the correct points and stores them as a single variable
	stringCPG = String(correctPointGlobal) #makes the total score a string
	format_string = ("You have got: %s right") #creates a format to display score
	actual_string = format_string % (stringCPG) #fill in the format for the total score
	set_text(actual_string) #displays the total correct score
	load_bestScore() #loads the best score 
	if correctPointGlobal > bestScore: #if the current best score is greater than the previous best score
		print("You have just beaten your best score") #tells me if the highscore is beaten (for debuging purposes)
		bestScore = correctPointGlobal #sets the current best score to be the saved best score
		save_bestScore() #savfes the new best score
		tempHS = correctPointGlobal
	else: #if they don't reach the best score
		pass #do nothing

func timer_count(): #function for the timer
	remain_time = (remain_time - 1) #take away 1 from the timer value every second

func _ready(): #when the scene loads
	while remain_time != 0: #while the value on the timer is not finished
		yield(get_tree().create_timer(1), "timeout") #create the timer
		timer_count() #run the timer function (taking away 1 second each second)
	score_to_use_elsewhere = int(stringCPG) #A variable that has the value of the total correct points 


func _on_reset_highscore_pressed(): #When the button is pressed 
	set_bestScore(0) #set the highscore to 0
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalMaths.tscn") 
	#switches scene before it adds to the high score in the next frame (due to getting from high correct score delta function).

