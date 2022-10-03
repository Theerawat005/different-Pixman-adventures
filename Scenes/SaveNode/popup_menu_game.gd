extends CenterContainer

onready var tween = $Tween

func _ready():
	pass

func muncul():
	tween.interpolate_property(self, "rect_position:y", -1500, 56, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()

func _on_homeButton_pressed():
	return get_tree().change_scene("res://Scenes/levels/menu.tscn")


func _on_TextureButton2_pressed():
	tween.interpolate_property(self, "rect_position:y", 56, -1500, 1, Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()


func _on_Buttonmenu_pressed():
	muncul()
