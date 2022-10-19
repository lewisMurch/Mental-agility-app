extends MeshInstance #allows godot to know what this script is made for

onready var main_node = get_node("../..")
#allows me to use infomation from other scripts (in this case, the script where button selection is coded)
var inView = 0 #a variable representing if the base cube is in view

func _process(delta): #runs the code below every frame
	if main_node.winAnimation == 0:
		if main_node.selection == 4: #if the "4 cubed" button is pressed
			if inView == 0: #if cube-base 2 is not in view
				translate(Vector3(-200, -200, -200)) #move cube-base 4 into the view
				inView = 1 #shows the cube-base is in view
			else: #if cube-base 4 is already in view
				pass #do nothing
		elif main_node.selection != 4: #if another button other than 4 is selected
			if inView == 1: #then, if cube-base 4 is already in view
				translate(Vector3(200, 200, 200)) #move cube-base 4 completely out of view 
				inView = 0 #show cube-base 4 is no longer in view
			else: #if cube-base 4 is not in view AND button 4 isn't selected
				pass #do nothing
