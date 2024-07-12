class_name won
extends Control
@onready var home = $MarginContainer/HBoxContainer/VBoxContainer/Home as Button

@onready var qt = $MarginContainer/HBoxContainer/VBoxContainer/qt as Button

@onready var again = $MarginContainer/HBoxContainer/VBoxContainer/again as Button

@onready var agn_lvl=preload("res://scenes/game.tscn") as PackedScene
@onready var hm=preload("res://scenes/mainmenu/main_menu.tscn") as PackedScene
func _ready():
	home.button_down.connect(on_home_pressed)
	qt.button_down.connect(on_ext_pressed)
	again.button_down.connect(on_ag_pressed)

	
func on_home_pressed() -> void:
	get_tree().change_scene_to_packed(hm)
func on_ag_pressed() -> void:
	get_tree().change_scene_to_packed(agn_lvl)	

	
func on_ext_pressed() -> void:
	get_tree().quit()
