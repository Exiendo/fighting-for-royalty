extends RichTextLabel

var charac_name : String = ""
var display_name : String = ""
var pose : String = ""
var music : String = ""
var sentence : String = ""
var sound_eff : String = ""
var count : int = 0 

@onready var ui_dialogue = $"."
@onready var peasant_poses = $"../../PeasantPoses"
@onready var musics = $"../../../../Music"
@onready var sound_effects = $"../../../../SoundEffect"

func dialogue(texts):
	if texts != "":
		for i in texts:
			#print(type_string(typeof(i)))
			if i == "+":
				#print("hyphen")
				#Dialogue Choices
				pass
			elif i != "-" and i != ":" and i != "_":
				#print("Char: " + i)
				
				if count == 0:
					charac_name = charac_name + i
					print("Charac_name: " + charac_name)
				elif count == 1:
					pose += i
					print("Pose: " + pose)
				elif count == 2:
					music += i
					#print("Music: " + i)
				elif count == 3:
					sound_eff += i
				elif count == 4:
					sentence += i
			elif i == "_":
				count += 1
			elif i == ":":
				count = 4
		
		print("Character: " + charac_name)
		if charac_name != "Peasant":
			if charac_name:
				if charac_name != display_name:
					display_name = charac_name

			#pass
		else:
			if charac_name != display_name:
				display_name = charac_name

		#print("Pose: " + pose)
		if pose != "":
			peasant_poses.posing(pose)
		if music != "":
			print("Music: " + music)
			musics.audio_play(music)
		if sound_eff != "":
			print("Sound Effect: " + sound_eff)
			sound_effects.sound_eff_play(sound_eff)
		#print("Sentence: " + sentence)
		ui_dialogue.set_text(display_name + ": " + sentence)
		charac_name = ""
		pose = ""
		music = ""
		sentence = ""
		sound_eff = ""
		count = 0
	else:
		pass
