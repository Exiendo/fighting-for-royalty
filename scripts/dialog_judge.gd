extends Control


@onready var pose_time = $JudgePoses
@onready var DialogueUI = $VBoxContainer/DialogueUI
@onready var musics = $"../../Music"
@onready var sound_effects = $"../../SoundEffect"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_continue_pressed() -> void:
	var content = Main.dialogue_next()
	var main_data = Main.dialogue(content) 
	var charac_name : String = ""
	var display_name : String = ""
	var pose : String = ""
	var music : String = ""
	var sentence : String = ""
	var sound_eff : String = ""
	var count : int = 0 
	
	if main_data:
		print("Main data: " + main_data)
		for i in main_data:
			#print(type_string(typeof(i)))
			if i == "+":
				#print("hyphen")
				#Dialogue Choices
				pass
			elif i != "_":
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
			else:
				count += 1
		if charac_name != "judge":
			print("Diff Char Name: " + charac_name)
			Main.did_it_switch(true)
			get_tree().change_scene_to_file("res://scenes/" + charac_name+ ".tscn")
		else:
			if pose != "":
				pose_time.posing(pose)
			if music != "":
				musics.audio_play(music)
			if sound_eff != "":
				sound_effects.sound_eff_play(sound_eff)
			DialogueUI.set_text(charac_name.capitalize() + ": " + sentence)

func continue_please(content):
	var main_data = Main.dialogue(content) 
	var charac_name : String = ""
	var display_name : String = ""
	var pose : String = ""
	var music : String = ""
	var sentence : String = ""
	var sound_eff : String = ""
	var count : int = 0 

	if main_data:
		print("Main data: " + main_data)
		for i in main_data:
			#print(type_string(typeof(i)))
			if i == "+":
				#print("hyphen")
				#Dialogue Choices
				pass
			elif i != "_":
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
			else:
				count += 1
		if charac_name != "judge":
			print("Diff Char Name: " + charac_name)
			Main.did_it_switch(true)
			get_tree().change_scene_to_file("res://scenes/" + charac_name+ ".tscn")
			
		else:
			if pose != "":
				pose_time.posing(pose)
			if music != "":
				musics.audio_play(music)
			if sound_eff != "":
				sound_effects.sound_eff_play(sound_eff)
			DialogueUI.set_text(charac_name.capitalize() + ": " + sentence)
