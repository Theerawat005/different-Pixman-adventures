extends Sprite

onready var timeout = $Timer

func _ready():
	pass


func _on_Area2D_body_entered(_body):
	if _body.get_collision_layer() == 1:
		timeout.start()
		


func _on_Timer_timeout():
	$AnimationPlayer.play("down")
	queue_free()
