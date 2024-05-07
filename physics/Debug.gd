extends Node2D

func update_debug_mouseP(vector):
	$MousePos.text = "Mouse Pos: ("+ str(snapped(vector.x,2)) +", "+ str(snapped(vector.y,2)) +")"

func update_debug_cardP(vector):
	$CardPos.text = "Card Pos: ("+ str(snapped(vector.x,2)) +", "+ str(snapped(vector.y,2)) +")"

func update_debug_mouseV(vector):
	$MouseVector.text = "Mouse V: ("+ str(snapped(vector.x,2)) +", "+ str(snapped(vector.y,2)) +")"

func update_debug_cardV(vector):
	$CardVector.text = "Card V: ("+ str(snapped(vector.x,2)) +", "+ str(snapped(vector.y,2)) +")"
