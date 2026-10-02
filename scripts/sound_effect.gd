extends AudioStreamPlayer
@onready var audio = $"."
"res://audio/sound_effects/BellsWarning.wav"
"res://audio/sound_effects/ArgumentsOptions.wav"

func sound_eff_play(se):
	audio.set_stream(load("res://audio/sound_effects/" + se + ".wav"))
	audio.play()
	print("SE Playing: " + str(audio.get_stream_playback()) + str(audio.has_stream_playback()))
