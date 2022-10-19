extends Camera2D

var format_string = (" ")
var actual_string = (" ")
var remain_time = 60

func timer_count():
	remain_time = (remain_time - 1)



func _ready():
	while remain_time != 0:
		yield(get_tree().create_timer(1), "timeout")
		timer_count()

	make_current()#switches the camera
