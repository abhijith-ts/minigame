extends Node
var score=0
@onready var scorelabel = $scorelabel


func add_point():
	score+=1
	scorelabel.text='Coins collected: '+ str(score)


#timer
@onready var win_lose = $"../player/Camera2D/Control/win_lose"
@onready var time_label = $time_label
@onready var retry = $"../player/Camera2D/Control/retry" as Button
@onready var home = $"../player/Camera2D/Control/home" as Button
@onready var re=preload("res://scenes/game.tscn") as PackedScene
@onready var homepg=preload("res://scenes/mainmenu/main_menu.tscn") as PackedScene
@onready var end = $"../end"

var ftime=0
var ctime=6
func _on_game_timer_timeout():
	ctime -=1
	if ctime>=0:
		time_label.text='Time left: '+ str(ctime)+'s'
	if ctime==ftime or enter==true:
		if score>=10 and enter==true:
			win_lose.visible=true
		else:
			win_lose.text='You Lost.'
			win_lose.visible=true
		retry.visible=true
		home.visible=true
		retry.button_down.connect(on_retry)
		home.button_down.connect(on_home_pressed)
		get_tree().paused = true
		return
			
func on_retry() -> void:
	print('re')
	get_tree().change_scene_to_packed(re)
	
func on_home_pressed() -> void:
	print('home')
	get_tree().change_scene_to_packed(homepg)

var enter=false
func _on_end_body_entered(body):
	enter=true
	
