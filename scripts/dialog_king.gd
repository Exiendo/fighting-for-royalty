extends Control
@onready var label = $VBoxContainer/DialogueUI
var file = FileAccess.open("res://dialogue/text/story_script.txt", FileAccess.READ)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_continue_pressed() -> void:
	var content = file.get_line()
	label.dialogue(content)
