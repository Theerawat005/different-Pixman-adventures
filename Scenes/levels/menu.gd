extends Control


func _ready():
	$allcloud/AnimationPlayer.play("move")

func _on_ButtonPlay_pressed():
	return get_tree().change_scene("res://Scenes/levels/Tutorial.tscn")


func _on_ButtonQuit_pressed():
	get_tree().quit()


func _on_creditButton_pressed():
	return get_tree().change_scene("res://Scenes/levels/credit.tscn")
