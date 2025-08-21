extends Sprite2D






func _on_button_pressed() -> void:
	$AnimationPlayer.play("default attack")
	$battle_ui.visible=false


func _on_defend_pressed() -> void:
	$AnimationPlayer.play("defend")
	$battle_ui.visible=false
	


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	enemy_turn()

func player_turn():
	$battle_ui.visible=true

func enemy_turn():
	for i in %enemies.get_children():
		if i.has_method("my_turn"):
			i. my_turn()
