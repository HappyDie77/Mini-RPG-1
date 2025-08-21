extends Sprite2D


func _ready() -> void:
	GlobalBattle.connect("player_turn", Callable(self, "player_tur"))

func player_tur():
	$battle_ui.visible=true

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
		print(i)
		if i.has_method("my_turn"):
			print(i)
			i. my_turn()
