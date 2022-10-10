extends KinematicBody2D

var motion = Vector2(0,0)
var countjump = 0
var coins = 0

export var SPEED = 500
export var GRAVITY = 25
export var JUMP_POWER = 520

const UP = Vector2(0,-1)
const Brick = preload("res://Scenes/SaveNode/Item/Brick.tscn")

onready var anima = $AnimatedSprite
onready var audiojump = $Audio_jump

func _ready():
	pass


func _physics_process(_delta):
	_jump()
	_move()
	brick()
	#Update position
	motion = move_and_slide(motion, UP)
	apply_gravity()
	animate()
	

func apply_gravity():
	#Check if the player is on the floor
	#if not apply gravity 
	if is_on_floor():
		motion.y = 0
		countjump = 0
	else:
		motion.y += GRAVITY


func _jump():
	if Input.is_action_just_pressed("jump") and countjump <2:
		motion.y -= JUMP_POWER
		countjump  += 1


func _move():
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0


func animate():
	if motion.x > 0:
		anima.flip_h = false
		anima.play("walk")
	elif motion.x < 0:
		anima.flip_h = motion.x < 0
		anima.play("walk")
	else:
		if motion.y < 0:
			anima.play("jump")
		else:
			anima.play("idle")


func add_coin():
	coins = coins + 1


func brick():
	if Input.is_action_just_pressed("brick"):
		var direction = 1 if not anima.flip_h else -1
		var b = Brick.instance()
		b.direction = direction
		get_parent().add_child(b)
		b.position.y = position.y
		b.position.x = position.x + 25 * direction
