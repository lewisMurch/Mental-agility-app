extends Label
var bestScoreColour = 0 setget set_bestScoreColour
const filePath = "user:///bestScoreColour.data"
onready var correctImport1 = get_node("../../Answer_box/Answer1/Label_1")
onready var correctImport2 = get_node("../../Answer_box/Answer2/Label_2")
onready var correctImport3 = get_node("../../Answer_box/Answer3/Label_3")
onready var correctImport4 = get_node("../../Answer_box/Answer4/Label_4")
var correctPointGlobal = 0
var stringCPG = (" ")
var format_string = (" ")
var actual_string = (" ")
var score_to_use_elsewhere = 0
var remain_time = 60

func load_bestScoreColour():
	var file = File.new()
	if not file.file_exists(filePath): return
	file.open(filePath, File.READ)
	bestScoreColour = file.get_var()
	file.close()

func save_bestScoreColour():
	var file = File.new()
	file.open(filePath, file.WRITE)
	file.store_var(bestScoreColour)
	file.close()

func set_bestScoreColour(new_value):
	bestScoreColour = new_value
	save_bestScoreColour()


func _process(delta):
	correctPointGlobal = (correctImport4.correctPoints) + (correctImport3.correctPoints) + (correctImport2.correctPoints) + (correctImport1.correctPoints)
	stringCPG = String(correctPointGlobal)
	format_string = ("You have got: %s right")
	actual_string = format_string % (stringCPG)
	set_text(actual_string)
	load_bestScoreColour()
	if correctPointGlobal > bestScoreColour:
		print("You have just beaten your best score")
		bestScoreColour = correctPointGlobal
		save_bestScoreColour()
	else:
		pass

func timer_count():
	remain_time = (remain_time - 1)

func _ready():
	while remain_time != 0:
		yield(get_tree().create_timer(1), "timeout")
		timer_count()
	score_to_use_elsewhere = int(stringCPG)

func _on_reset_highscore_pressed():
	set_bestScoreColour(0)
	get_tree().change_scene("res://Scenes/menu/Main_Menu/gameModes/mentalAgility.tscn") 
	#switches scene before it randomly adds to the high score! (due to getting from high correct score delta function).
	
