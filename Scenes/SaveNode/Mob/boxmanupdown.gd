 extends KinematicBody2D

onready var timeout = $Timer
onready var timeout2 = $Timer2
onready var timeout3 = $Timer3
onready var animedown = $Animationdown
onready var animes = $AnimatedSprite
onready var animeup = $Animationup

func _ready():
	pass

func _on_Area2D2_body_entered(_body):
	animes.play("up")
	timeout.start()


func _on_Timer_timeout():
	animes.play("down")
	animedown.play("down")
	timeout2.start()


func _on_Timer2_timeout():
	animes.play("up")
	animeup.play("moveup")
	timeout3.start()


func _on_Timer3_timeout():
	animes.play("crawl")
