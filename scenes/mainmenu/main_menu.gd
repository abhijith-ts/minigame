class_name M_Menu
extends Control
@onready var strt = $MarginContainer/HBoxContainer/VBoxContainer/strt as Button
@onready var qt = $MarginContainer/HBoxContainer/VBoxContainer/qt as Button
@onready var mgame = $MarginContainer/HBoxContainer/VBoxContainer/mgame as Button
@onready var crd = $MarginContainer/crd as Button
@onready var start_level=preload("res://scenes/mini.tscn") as PackedScene

func _ready():
	strt.button_down.connect(on_start_pressed)
	qt.button_down.connect(on_exit_pressed)
	mgame.button_down.connect(on_mg_pressed)
	crd.button_down.connect(on_crd_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)
func on_mg_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)	
func on_crd_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)	
	
func on_exit_pressed() -> void:
	get_tree().quit()
