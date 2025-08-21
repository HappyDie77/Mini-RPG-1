<<<<<<< Updated upstream
#extends CharacterBody2D
 #
 #
#const SPEED = 100.0
 #
 #
#func _physics_process(delta: float) -> void:
	## Get direction from this enemy to the player
	#var direction = (Global.player_pos - global_position).normalized()
	## Move towards the player
	#velocity = direction * SPEED
	#move_and_slide()
 #
 #
#func _on_area_2d_body_entered(body: Node2D) -> void:
	#if body.is_in_group("player"):
		#get_tree().paused=true
=======
extends CharacterBody2D
 
 
const SPEED = 100.0
 
 
func _physics_process(delta: float) -> void:
	# Get direction from this enemy to the player
	if Global.player_pos !=null:
		var direction = (Global.player_pos - global_position).normalized()
		# Move towards the player
		velocity = direction * SPEED
	move_and_slide()
 



func _on_hitbox_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().paused=true
>>>>>>> Stashed changes
