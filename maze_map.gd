extends Node2D

@onready var player = $Player
@onready var label = $Label
@onready var timer = $Timer

# When the player hits the walls
func _on_walls_body_entered(body):
	player.velocity = Vector2.ZERO
	player.global_position = player.INITIAL_POSITION

# When the player hits the end area 
func _on_area_2d_body_entered(body):
	label.text = "You win!!!"
	timer.stop()
	timer.start()
	player.velocity = Vector2.ZERO
	player.global_position = player.INITIAL_POSITION

func _on_timer_timeout():
	label.text = ""
	player.global_position = player.INITIAL_POSITION
