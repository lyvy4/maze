extends Node2D

# When the player hits the walls
func _on_walls_body_entered(body):
	queue_free()
	pass # Replace with function body.

# When the player hits the end area 
func _on_area_2d_body_entered(body):
	print("you win")
