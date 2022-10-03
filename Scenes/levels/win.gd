extends Control


func _ready():
	pass


func _on_ButtonQuit_pressed():
	get_tree().quit()

func _on_ButtonRestart_pressed():
	return get_tree().change_scene("res://Scenes/levels/Tutorial.tscn")
