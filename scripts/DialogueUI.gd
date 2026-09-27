extends RichTextLabel

var charac_name : String = ""
var pose : String = ""
var music : String = ""
var sentence : String = ""
var count : int = 0 

@onready var ui_dialogue = $"."
@onready var peasant_poses = $"../../PeasantPoses"


func dialogue(texts):
	if texts != "":
		for i in texts:
			#print(type_string(typeof(i)))
			if i == "-":
				#print("hyphen")
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
					sentence += i
			elif i == "_":
				count += 1
			elif i == ":":
				count = 3
		
		print("Character: " + charac_name)
		if charac_name != "Peasant":
			pass
		#print("Pose: " + pose)
		if pose != "":
			peasant_poses.posing(pose)
		#print("Sentence: " + sentence)
		ui_dialogue.set_text(charac_name + ": " + sentence)
		pose = ""
		music = ""
		sentence = ""
		count = 0
	else:
		pass
