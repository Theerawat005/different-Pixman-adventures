extends Area2D

signal coin_collected

func _ready():
	pass


func _on_coin_body_entered(_body):
	$AnimationPlayer.play("die")
	$AudioStreamPlayer.play()
	emit_signal("coin_collected")


func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()
