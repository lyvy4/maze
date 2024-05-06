extends Node2D

@onready var player = $Player
@onready var win_label = $Label
@onready var timer = $Timer
@onready var gameover = $GameOverSound
@onready var score_label = $Score

var total_score := 0
# When the player hits the walls

func _on_walls_body_entered(body):
	total_score -= 1
	update_total_score_label()
	gameover.play()
	player.velocity = Vector2.ZERO
	player.position = player.INITIAL_POSITION

# When the player hits the end area 
func _on_area_2d_body_entered(body):
	total_score += 1
	update_total_score_label()
	player.velocity = Vector2.ZERO
	player.global_position = player.INITIAL_POSITION

func _on_timer_timeout():
	player.global_position = player.INITIAL_POSITION
	
func update_total_score_label():
	score_label.text = "Score: " + str(total_score)
