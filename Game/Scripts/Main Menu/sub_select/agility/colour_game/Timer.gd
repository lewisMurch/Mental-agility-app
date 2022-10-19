extends Label

var format_string = (" ")
var actual_string = (" ")
var remain_time = 60

func timer_count():
	remain_time = (remain_time - 1)
	format_string = ("%s seconds remaining")
	if remain_time != 1:
		actual_string = format_string % (remain_time)
		set_text(actual_string)
	else:
		set_text("1 second remaining")


func _ready():
	while get_text() != "0 seconds remaining":
		yield(get_tree().create_timer(1), "timeout")
		timer_count()
