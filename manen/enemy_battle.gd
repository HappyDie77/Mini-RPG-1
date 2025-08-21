extends Sprite2D


func my_turn():
	attack()

func attack():
	$AnimationPlayer.play("attack")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	GlobalBattle.emit_signal("player_turn")
