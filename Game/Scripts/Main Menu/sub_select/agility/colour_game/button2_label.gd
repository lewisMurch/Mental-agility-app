extends RichTextLabel

onready var part1 = get_node("../../../QuestionBox/questionnn")

var correctPoints = 0
var wrongPoints = 0

func _process(delta):
	if part1.box == 2:
		set_text(part1.selectedColourNumber)
	else:
		set_text(part1.wrongAns2)


func Answer2_pressed():
	if get_text() == part1.selectedColourNumber:
		correctPoints = correctPoints + 1
	else:
		wrongPoints = wrongPoints + 1
	part1.Qsetter()

