extends KinematicBody2D

var speed = 50
var velocity = Vector2()
export var direction = -1

onready var animes = $AnimatedSprite
onready var floorchecker = $floor_checker
onready var topchecker = $top_checker
onready var shape2D = $CollisionShape2D
onready var cooldown = $Timer


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


func _on_top_checker_body_entered(_body):
	if _body.get_collision_layer() == 1:
		animes.play("squashed")
		cooldown.start()
		speed = 0
	elif _body.get_collision_layer() == 128:
		_body.queue_free()
		queue_free()

func _on_Timer_timeout():
	queue_free()


func _on_sides_checker_body_entered(_body):
	return get_tree().reload_current_scene()
