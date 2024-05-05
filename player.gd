extends CharacterBody2D

#set speed of the player
var SPEED := 200

var INITIAL_POSITION = Vector2(1123, 565)

func _process(delta):
	#Initialize direction
	var direction = Vector2.ZERO 
	
	#Handle vertical movement
	if Input.is_key_pressed(KEY_UP): 
		direction.y = -1
	elif Input.is_key_pressed(KEY_DOWN): 
		direction.y = 1
		
	if Input.is_key_pressed(KEY_LEFT): 
		direction.x = -1
	elif Input.is_key_pressed(KEY_RIGHT): 
		direction.x = 1
	
	#set the velocity property to be player to be moved
	velocity += (direction.normalized() * SPEED * delta)

	#move the player
	move_and_slide()
