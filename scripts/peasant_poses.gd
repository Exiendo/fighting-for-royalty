extends TextureRect

@onready var poses = "res://characters/peasant/peasant_"
@onready var angryHAND = $angryHAND




func posing(pose):
	var texture = str(poses + pose + ".png")
	print(texture)
	set_texture(load(texture))
	if pose == "angryA" or pose == "angryB":
		angryHAND.visible = true
	else:
		angryHAND.visible = false
