extends CanvasLayer

onready var cions_n = $coins

var coins = 0


func _ready():
	cions_n.text = String(coins)


func _on_coin_collected():
	coins = coins + 1
	_ready()
