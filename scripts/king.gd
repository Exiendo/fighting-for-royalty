extends Node2D
@onready var DialogKing = $CanvasLayer/DialogKing

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Main.switch_i_tell_you():
		print("SwitchITellYou ran though")
		var content = Main.gimme_content()
		DialogKing.continue_please(content)
	else:
		$CanvasLayer/DialogPeasant/Box/Continue.emit_signal("pressed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
