extends Area2D


func _ready():
	pass


func _on_fallzone_body_entered(_body):
	return get_tree().reload_current_scene()
