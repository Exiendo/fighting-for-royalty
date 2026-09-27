extends Node2D
@onready var title_screen : Control = $TitleScreen/TitleScreen
@onready var camera : Camera2D = $TitleScreenCamera2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	camera.make_current()


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/peasant.tscn")
