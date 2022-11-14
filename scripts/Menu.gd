extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	Player.health=20
	Global.key=false
	Global.keyOga=false
	Global.keyBlue=false
	Global.keyRed=false
	Global.keyYellow=false
	Global.lastLocation=0
	Global.location=0
	get_tree().change_scene("res://cenas/historia.tscn")
	pass # Replace with function body.

func _on_CheckButton_toggled(button_pressed):
	Global.song=button_pressed
	Global.checkMusic()
	pass # Replace with function body.
