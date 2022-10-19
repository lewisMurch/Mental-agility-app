extends RigidBody2D #tells godot what object this script is meant for

func _ready(): #when the scene starts
	yield(get_tree().create_timer(8), "timeout") #creates an 8 second timer
	timer_count() #runs the function "timer_count" when the 8 second timer is completed

func timer_count(): #the function run when the 8 second timer has been completed
		set_sleeping(true) #sets all objects "to sleep" so they stop moving

