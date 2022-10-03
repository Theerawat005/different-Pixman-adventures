extends AnimatedSprite

export(String) var win
onready var maxcoin = $"../HUD/lable/MaxCoin"

var coins = 0

func _ready():
	maxcoin.text = String(win)

func _on_Area2D_body_entered(_body):
	if String(coins) >= String(win):
		return get_tree().change_scene("res://Scenes/levels/win.tscn")	
	else:
		pass


func _on_coin_coin_collected():
	coins = coins + 1
