extends RigidBody2D

var anchorPosition: Vector2
var active = false

func setAnchorPosition(anchor: Vector2):
	anchorPosition = anchor
	position = anchorPosition
	active = true

