extends RigidBody2D

var initialPosition 
var mouseVector
var initialVector

func _ready():
	initialPosition = global_position
	mouseVector = Vector2.ZERO
	initialVector = Vector2.ZERO
	print(initialPosition)


func _physics_process(delta):
	mouseVector = global_position - get_global_mouse_position()
	initialVector = global_position - initialPosition
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		apply_impulse(mouseVector)
		apply_impulse(initialVector)
		

func _process(delta):
	var debug_node = get_parent().get_node("Debug")
	if debug_node:
		debug_node.update_debug_mouseP(get_global_mouse_position())
		debug_node.update_debug_cardP(global_position)
		debug_node.update_debug_mouseV(mouseVector)
		debug_node.update_debug_cardV(initialVector)



	
