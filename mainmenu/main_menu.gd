class_name MainMenu
extends Control 


@onready var start_game = $"MarginContainer/HBoxContainer/VBoxContainer/Start Game"
@onready var quit = $MarginContainer/HBoxContainer/VBoxContainer/Quit
@onready var start_level = preload("res://Scenes/world.tscn") as PackedScene

func _ready():
	start_game.button_down.connect(on_start_pressed)
	quit.button_down.connect (on_exit_pressed)


func on_start_pressed() -> void: 
	get_tree().change_scene_to_packed(start_level)
 

func on_exit_pressed() -> void: 
	pass 
	get_tree().quit()
