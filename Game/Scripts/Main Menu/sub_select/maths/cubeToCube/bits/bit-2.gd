extends MeshInstance #allows godot to know what this script is made for

onready var main_node = get_node("../..")#allows me to use infomation from other scripts (in this case, the script where button selection is coded)
var inView = 0 #a variable representing if the base cube is in view
var animationRun = 0 #represents if the animation has been run or not


func _process(delta): #runs the code below every frame
	if main_node.winAnimation == 0: #if the win animation hasn't been played 
		if main_node.correctAns == 2 and inView == 0: #if the correct answer is box 1, and the base-cube isn't in view
			translate(Vector3(-200, -200, -200)) #move the base cube in view
			inView = 1 #say that the base cube is in view
		else:
			pass #do nothing
	
	if main_node.winAnimation == 2: #if the user gets cube size 2 correct, play the win animation on that small cube
		if animationRun < 1: #if the animation hasn't fully finished 
			translate(Vector3(0, -0.05, 0)) #move the small cube down slightly
			animationRun = animationRun + 0.01 #add small incriments, slowly getting closer to completing the animation each frame 
		else:
			pass #do nothing

	else:
		if animationRun < 1 and main_node.attempt == 1: #if the selected cube is wrong, play the wrong animation
			translate(Vector3(0, -1, 0)) #move slowly down each frame, stopping when it touches the other cube
			animationRun = animationRun + 0.5 #add incriments, slowly getting closer to completing the animation each frame 

