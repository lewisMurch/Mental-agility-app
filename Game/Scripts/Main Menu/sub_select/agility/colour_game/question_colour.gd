extends RichTextLabel #tells godot what object this script is made for

var questionColour = ["SHOULD NOT BE SHOWN", "Red", "Green", "Blue", "Orange", "Pink", "Purple", "Black", "Yellow"]
#creates an array assigined to a variable. these values will be used later
var questionWord = ["SHOULD NOT BE SHOWN", "Red", "Green", "Blue", "Orange", "Pink", "Purple", "Black", "Yellow"]
#creates an array assigined to a variable. these values will be used later

var box = 1 #creates a variable which will be filled in later, 1 is a place holder
var questionFinal = " " #creates a variable which will be filled in later, " " is a place holder
var wrongAns = "Red" #creates a variable which will be filled in later, "red" is a place holder
var wrongAns2 = "Red" #creates a variable which will be filled in later, "red" is a place holder
var wrongAns3 = "Red" #creates a variable which will be filled in later, "red" is a place holder
var wrongAns4 = "Red" #creates a variable which will be filled in later, "red" is a place holder
var realAnswer = "Red" #creates a variable which will be filled in later, "red" is a place holder
var question = " " #creates a variable which will be filled in later, " " is a place holder
var correctScore = " " #creates a variable which will be filled in later, " " is a place holder
var wrongScore = " " #creates a variable which will be filled in later, " " is a place holder
var selectedColour = Color(0, 0, 0, 1) #creates a colour variable which will be filled in later, placeholder 
var selectedColourNumber = 0 #creates a variable which will be filled in later, 0 is a place holder

var red = Color(1, 0, 0, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name
var green = Color(0, 1, 0, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name
var blue = Color(0, 0, 1, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name
var orange = Color(1, 0.65, 0, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name
var pink = Color(1, 0.75, 0.8, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name
var purple = Color(0.63, 0.13, 0.94, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name
var black = Color(0, 0, 0, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name
var yellow = Color(1, 1, 0, 1 ) #creates a variable that has colour data. It is assinged a colour matching its name

func _ready(): #when the scene loads up
	Qsetter() #run the Question generation function

func Qsetter(): #the question generation function
	randomize() #randomise the seed for godot
	var wordRandomizer = randi()%8+1 #create a random number between 1 and 8. assign it to a variable
	question = questionWord[wordRandomizer] #set variable "question" to be a colour from the list (randomly chosen)
	randomize() #randomise the seed for godot
	box = randi()%4+1 #create a random number between 1 and 4. assign it to a variable
	var colourRandomizer = randi()%8+1 #create a random number between 1 and 8. assign it to a variable
	selectedColourNumber = questionColour[colourRandomizer] #comment below
	#set variable "selectedColourNumber" to be a colour from the list (randomly chosen)
	
	if selectedColourNumber == "Red": #if that selected colour is "Red"... 
		selectedColour = red #set the variable to actually be the colour red
		
	elif selectedColourNumber == "Green": #if that selected colour is "Green"... 
		selectedColour = green #set the variable to actually be the colour green
		
	elif selectedColourNumber == "Blue":#if that selected colour is "Blue"... 
		selectedColour = blue #set the variable to actually be the colour blue
		
	elif selectedColourNumber == "Orange":#if that selected colour is "Orange"... 
		selectedColour = orange #set the variable to actually be the colour orange
		
	elif selectedColourNumber == "Pink":#if that selected colour is "Pink"... 
		selectedColour = pink #set the variable to actually be the colour pink
		
	elif selectedColourNumber == "Purple":#if that selected colour is "Purple"... 
		selectedColour = purple #set the variable to actually be the colour purple
		
	elif selectedColourNumber == "Black":#if that selected colour is "Black"... 
		selectedColour = black #set the variable to actually be the colour black
		
	elif selectedColourNumber == "Yellow":#if that selected colour is "Yellow"... 
		selectedColour = yellow #set the variable to actually be the colour yellow
		
	while wrongAns == selectedColourNumber: #while a randomly generated number is the same as the correct one
		randomize() #randomise godots seed
		colourRandomizer = randi()%8+1 #create a random number between 1 and 8
		wrongAns = questionColour[colourRandomizer] #make the wrong answer have the randomly made colour data
		
	while wrongAns2 == selectedColourNumber or wrongAns2 == wrongAns:#while a randomly generated number is the same as an existing one
		randomize() #randomise godots seed
		colourRandomizer = randi()%8+1 #create a random number between 1 and 8
		wrongAns2 = questionColour[colourRandomizer] #make the wrong answer have the randomly made colour data

	while wrongAns3 == selectedColourNumber or wrongAns3 == wrongAns2 or wrongAns3 == wrongAns: #comment below
	#while a randomly generated number is the same as an existing one
		randomize()#randomise godots seed
		colourRandomizer = randi()%8+1 #create a random number between 1 and 8
		wrongAns3 = questionColour[colourRandomizer] #make the wrong answer have the randomly made colour data

	while wrongAns4 == selectedColourNumber or wrongAns4 == wrongAns3 or wrongAns4 == wrongAns2 or wrongAns4 == wrongAns:
		randomize()#randomise godots seed
		colourRandomizer = randi()%8+1 #create a random number between 1 and 8
		wrongAns4 = questionColour[colourRandomizer] #make the wrong answer have the randomly made colour data
		
	set_modulate(selectedColour) #set the colour of the text (which is a question in this case) to be the chosen colour
	set_text(question) #set the text (which is the question) to be the randomly chosen colour NAME, not acutal colour
	








