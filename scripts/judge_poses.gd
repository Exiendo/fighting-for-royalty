extends TextureRect

@onready var poses = "res://characters/"
@onready var angryHAND = $angryHAND
"res://characters/judge/judge_neutralB.png"
@onready var _self = $"."


func posing(pose, character):
	print("posing running")
	var texture = str(poses + character + "/" + character+ "_"+ pose + ".png")
	print(texture)
	_self.set_texture(load(texture))
	
