extends AudioStreamPlayer
@onready var audio = $"."
"res://audio/Main2.wav"
"res://audio/musics/Main2.wav"

func audio_play(music):
	
	audio.set_stream(load("res://audio/musics/" + music + ".wav"))
	audio.play()
	print("SE Playing: " + str(audio.get_stream_playback()) + str(audio.has_stream_playback()))
	
