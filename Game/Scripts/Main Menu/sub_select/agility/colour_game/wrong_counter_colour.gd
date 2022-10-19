extends Label
onready var wrongPointImport1 = get_node("../../Answer_box/Answer1/Label_1") #A variable which gets variables from other algorithms
onready var wrongPointImport2 = get_node("../../Answer_box/Answer2/Label_2") #A variable which gets variables from other algorithms
onready var wrongPointImport3 = get_node("../../Answer_box/Answer3/Label_3") #A variable which gets variables from other algorithms
onready var wrongPointImport4 = get_node("../../Answer_box/Answer4/Label_4") #A variable which gets variables from other algorithms
var wrongPointGlobal = 0 #A variable that has a place holder value of 0
var stringWPG = " " 
var format_string = " " 
var actual_string = " "

func _process(delta):
	wrongPointGlobal = (wrongPointImport1.wrongPoints) + (wrongPointImport2.wrongPoints) + (wrongPointImport3.wrongPoints) + (wrongPointImport4.wrongPoints)
	stringWPG = String(wrongPointGlobal)
	format_string = ("You have got: %s wrong")
	actual_string = format_string % (stringWPG)
	set_text(actual_string)

