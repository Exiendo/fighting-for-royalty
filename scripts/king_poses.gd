extends TextureRect

@onready var poses = "res://characters/king/king_"
@onready var angryHAND = $angryHAND





func posing(pose):
	var texture = str(poses + pose + ".png")
	print(texture)
	set_texture(load(texture))
	if pose == "enragedA":
		angryHAND.visible = true
	else:
		angryHAND.visible = false
