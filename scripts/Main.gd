extends RichTextLabel

var charac_name : String = ""
var display_name : String = ""
var pose : String = ""
var music : String = ""
var sentence : String = ""
var sound_eff : String = ""
var count : int = 0 
#$CanvasLayer/DialogPeasant/PeasantPoses
@onready var ui_dialogue = $CanvasLayer/DialogPeasant/VBoxContainer/DialogueUI
@onready var peasant_poses = $CanvasLayer/DialogPeasant/PeasantPoses
@onready var musics = $Music
@onready var sound_effects = $SoundEffect
#
#func posing(pose):
	#var texture = str(poses + "peasant_" + pose + ".png")
	#print(texture)
	#set_texture(load(texture))
#$CanvasLayer/DialogJudge/JudgePoses

#func switch_pose(character, pose):
	#Char = 
	#
	#Char.set_texture(load(texture))

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
					#print("Charac_name: " + charac_name)
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
		var main_data = []
		
		#get_tree().change_scene_to_file("res://scenes/"+ charac_name + ".tscn")
		print("Charac_name: " + charac_name)
		main_data.append(charac_name)
		print("Pose: " + pose)
		main_data.append(pose)
		#if music != "":
			#print("Music: " + music)
		main_data.append(music)	
		#if sound_eff != "":
			#print("Sound Effect: " + sound_eff)
		main_data.append(sound_eff)
		#print("Sentence: " + sentence)
		main_data.append(sentence)
		#ui_dialogue.set_text(display_name + ": " + sentence)
		charac_name = ""
		pose = ""
		music = ""
		sentence = ""
		sound_eff = ""
		count = 0
		var data = ""
		
		for i in range(len(main_data)):
			data = data + main_data[i] + "_"
		return data
	else:
		pass
