extends Label
onready var correct_count = get_node("../accuracy_box/correct")
var remain_time = 60
var format_string = (" ")
var actual_string = (" ")


func timer_count():
	remain_time = (remain_time - 1)


func _ready():
	while remain_time != 0:
		yield(get_tree().create_timer(1), "timeout")
		timer_count()
	
	var stringCPG = correct_count.correctPointGlobal
	format_string = ("You have got: %s right")
	actual_string = format_string % (stringCPG)
	set_text(actual_string)
	

