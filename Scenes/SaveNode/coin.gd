extends Area2D


func _ready():
	pass


func _on_coin_body_entered(body):
	$AnimationPlayer.play("die")
	$AudioStreamPlayer.play()
	body.add_coin()


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
