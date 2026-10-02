extends RichTextLabel
var file = FileAccess.open("res://dialogue/text/story_script.txt", FileAccess.READ)
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
var switch = false
var content = ""

func switch_i_tell_you():
	print("switch is " + str(switch))
	if switch == true:
		switch = false
		return true
	else:
		return false

func gimme_content():
	return content

func did_it_switch(value):
	if value == true:
		print("Did it Switch is True!")
		switch = true

func dialogue_next():
	content = file.get_line()
	return content

func dialogue(texts):
	if texts != "":
		for i in texts:
			#print(type_string(typeof(i)))
			if i == "+":
				#print("hyphen")
				#Dialogue Choices
				pass
			elif i != "+" and i != ":" and i != "_":
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
					print("")
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
		print("Sound Effect: " + sound_eff)
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
