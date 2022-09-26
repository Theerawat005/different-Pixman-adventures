extends Control


func _ready():
	pass


func _on_quit_pressed():
	get_tree().quit()


func _on_Button_Play_pressed():
	get_tree().change_scene("res://Scenes/levels/level1.tscn")
