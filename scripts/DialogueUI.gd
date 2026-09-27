extends RichTextLabel

var charac_name : String = ""
var pose : String = ""
var music : String = ""
var sentence : String = ""
var sound_eff : String = ""
var count : int = 0 
var button_no

var choice1 : String = ""
var choice2 : String = ""
var choice3 : String = ""
var choice4 : String = ""

@onready var ui_dialogue = $"."
@onready var peasant_poses = $"../../PeasantPoses"
@onready var musics = $"../../../../Music"
@onready var sound_effects = $"../../../../SoundEffect"

func dialogue(texts):
	if texts != "":
		for i in texts:
			#print(type_string(typeof(i)))
			if i == "-":#Change to peasant screen
				if i != "_": 
					if count == 0:
						choice1 += i
					elif count == 1:
						choice2 += i
					elif count == 2:
						choice3 += i
					elif count == 3:
						choice4 += i
				#elif i == "_":
					#count += 1
					#
				#elif i == ":":
					#
					#if button_no != 1:
						#pass
					#else:
						#sentence =+ i
					#if button_no != 2:
						#pass
					#else:
						#sentence =+ i
					#if button_no != 3:
						#pass
					#else:
						#sentence =+ i
					#if button_no != 4:
						#pass
					#else:
						#sentence =+ i
				#
						#
				elif i == "_":
					count =+ 1
				pass
			elif i != "-" and i != ":" and i != "_":
				#print("Char: " + i)
				
				if count == 0:
					charac_name = charac_name + i
					print("Charac_name: " + charac_name)
				elif count == 1:
					pose += i
					#print("Pose: " + pose)
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
			pass
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
		ui_dialogue.set_text(charac_name + ": " + sentence)
		pose = ""
		music = ""
		sentence = ""
		sound_eff = ""
		count = 0
	else:
		pass




func _on_button1_pressed() -> void:
	button_no = 1


func _on_button2_pressed() -> void:
	button_no = 2


func _on_button3_pressed() -> void:
	button_no = 3


func _on_button4_pressed() -> void:
	button_no = 4
