extends Label
onready var wrong_count = get_node("../accuracy_box/False")
var remain_time = 60

var format_string = (" ")
var actual_string = (" ")

func timer_count():
	remain_time = (remain_time - 1)

func _ready():
	while remain_time != 0:
		yield(get_tree().create_timer(1), "timeout")
		timer_count()
	
	var stringCPG = wrong_count.get_text()
	format_string = ("%s")
	actual_string = format_string % (stringCPG)
	set_text(actual_string)

