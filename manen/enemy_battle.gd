extends Sprite2D


func my_turn():
	attack()

func attack():
	$AnimationPlayer.play("enemy_attack")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	pass # Replace with function body.
