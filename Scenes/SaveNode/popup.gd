extends CenterContainer

onready var tween = $Tween

func _ready():
	pass

func muncul():
	tween.interpolate_property(self, "rect_position:y", -340, 56, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()


func _on_Button_settings_pressed():
	muncul()


func _on_TextureButton3_pressed():
	tween.interpolate_property(self, "rect_position:y", 56, -340, 0.5, Tween.EASE_OUT)
	tween.start()
