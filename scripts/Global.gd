extends Node

var song=false
var selMusic=0
var positionPlayer
var locationPlayer
var location=0
var audio
var save=false
var lastLocation=0
var translationPlayer
var rotationPlayer=0
var lastRotationPlayer=0
var keyOga=false
var keyBlue=false
var keyRed=false
var keyYellow=false
var key=false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	selcMusic()
	pass # Replace with function body.



func selcMusic():
	if selMusic==0:
		stopMusic()
		audio=get_node("Unsolved_Investigation")
	elif selMusic==1:
		stopMusic()
		audio=get_node("CrEEP")
	elif selMusic==2:
		stopMusic()
		audio=get_node("i_see_you")
	elif selMusic==3:
		stopMusic()
		audio=get_node("Evil1")
	elif selMusic==4:
		stopMusic()
		audio=get_node("Evil2")
	elif selMusic==5:
		stopMusic()
		audio=get_node("Evil3")
	elif selMusic==6:
		stopMusic()
		audio=get_node("Evil4")
	elif selMusic==7:
		stopMusic()
		audio=get_node("Evil5")

func playMusic():
	audio.play()
	
func stopMusic():
	if audio==null:
		pass
	else:
		audio.stop()

func checkMusic():
	selcMusic()
	if Global.song==false:
		stopMusic()
	else:
		playMusic()
		
func playSeeYou():
	get_node("i_see_you").play()
	pass
	get_node("i_see_you").stop()

func menosLife():
	 Player.health -= 1
func maisLife():
	 Player.health += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Player.checklife()
	#pass
