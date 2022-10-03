extends Area2D

onready var dropanime = $"../AnimeDrop"

func _on_platform_body_entered(body):
	dropanime.play("drop")


func _on_AnimeDrop_animation_finished(anim_name):
	queue_free()
