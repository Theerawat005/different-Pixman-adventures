extends Control

onready var URL = "https://www.kenney.nl/"


func _on_TextureButton_pressed():
	OS.shell_open(URL)


func _on_home_pressed():
	return get_tree().change_scene("res://Scenes/levels/menu.tscn")
