extends VBoxContainer

export(String) var label
export(String) var bus_name
export(NodePath) var audio_stream_player_path

onready var HMusic = $TextMusic/Music_HScrollBar

var audio_stream_player : AudioStreamPlayer

func _ready():
	pass

func _on_Music_HScrollBar_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)

