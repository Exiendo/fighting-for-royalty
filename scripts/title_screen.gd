extends Node2D
@onready var audio = $AudioStreamPlayer
@onready var main1 = "res://audio/musics/Main1.wav"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	audio.set_stream(load(main1))
	audio.play()

	print("Music Playing: " + str(audio.get_stream_playback()) + str(audio.has_stream_playback()))
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	audio.stop()
	get_tree().change_scene_to_file("res://scenes/peasant.tscn")
