extends TextureRect

@onready var poses = "res://characters/judge/judge_"





func posing(pose):
	var texture = str(poses + pose + ".png")
	print(texture)
	set_texture(load(texture))
