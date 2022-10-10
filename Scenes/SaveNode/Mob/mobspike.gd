extends KinematicBody2D

var speed = 0
var velocity = Vector2()
export var direction = -1

onready var animes = $AnimatedSprite
onready var floorchecker = $floor_checker
onready var shape2D = $CollisionShape2D


func _ready():
	pass


func _physics_process(_delta):
	if is_on_wall() or not floorchecker.is_colliding():
		direction = direction * -1
		animes.flip_h = not animes.flip_h
		floorchecker.position.x = shape2D.shape.get_extents().x * direction
	
	velocity.y += 20
	velocity.x = speed * direction 
	
	velocity = move_and_slide(velocity,Vector2.UP)
	

func _on_spike_body_entered(_body):
	return get_tree().reload_current_scene()


func _on_bodymob_body_entered(_body):
	if _body.get_collision_layer() == 1:
		return get_tree().reload_current_scene()
	elif _body.get_collision_layer() == 128:
		_body.queue_free()
		queue_free()


func _on_Area_body_entered(_body):
	if _body.get_collision_layer() == 1:
		speed = 50
		animes.play("crawl")

