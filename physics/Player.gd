extends RigidBody2D

var initialPosition 
var mouseVector
var initialVector

func _ready():
	initialPosition = $Sprite2D.position

func _physics_process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		mouseVector = get_global_mouse_position() - global_position
		initialVector = initialPosition - global_position
		apply_impulse(mouseVector)
		apply_impulse(initialVector.normalized())

func _draw():
	draw_line(initialPosition, initialVector, Color.RED, 1.0)
	draw_line(global_position, mouseVector, Color.GREEN, 1.0)
