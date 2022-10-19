extends KinematicBody2D #tells godot what object this script is meant for

var direction1 = -5 #creates a varaible called "direction1"
var direction2 = 10 #creates a variable called "direction2"
var go = false #creates a boolean variable named "go"

func _ready(): #a function thatstarts when the scene is first opened
		yield(get_tree().create_timer(4), "timeout") #creates a timer which lasts 4 seconds
		timer_count() #starts the timer count that reduces 1 second every second


func timer_count(): 
	go = true #when the timer hits 0, set the "go" variable to true

func _physics_process(delta): #runs the following function every frame
	if go == true: #when go is set to true, run the code below
		move_and_collide(Vector2(direction1, direction2)) #move the large circle in the directions specified
	else: #if go is false
		move_and_collide(Vector2(0, 0)) #don't move the large circle 

