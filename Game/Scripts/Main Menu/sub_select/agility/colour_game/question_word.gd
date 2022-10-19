extends Label
var multipleTwo = 1
var mTwo = "1"


func _randomize_question_p2(): # This creates a randomized number
	randomize()
	multipleTwo = randi()%12+1 #randomised number 2
	mTwo = String(multipleTwo) #number 2 in string form

func set_randomized_question():#This sets the randomized number
	randomize()
	_randomize_question_p2()
	set_text(mTwo)
	
	
#FOR EACH BUTTON PRESSED:
func _on_Answer1_pressed():
	set_randomized_question()

func _on_Answer2_pressed():
	set_randomized_question()

func _on_Answer3_pressed():
	set_randomized_question()
	
func _on_Answer4_pressed():
	set_randomized_question()
