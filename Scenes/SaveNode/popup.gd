extends CenterContainer

onready var movetween = $Tween

func _ready():
	pass

func muncul():
	movetween.interpolate_property(self, "rect_position:y", -340, 56, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	movetween.start()


func _on_TextureButton3_pressed():
	movetween.interpolate_property(self, "rect_position:y", 56, -340, 0.5, Tween.EASE_OUT)
	movetween.start()


func _on_ButtonSetting_pressed():
	muncul()
