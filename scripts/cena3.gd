extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("OmniLight").hide()
	#Global.playMusic()
	#Global.menosLife()
	Global.rotationPlayer=180
	#Global.rotationPlayer=get_node("Player").rotation_degrees.y
	get_node("Player").translation=get_node("Position3D").translation
	get_node("Player").rotation_degrees=get_node("Position3D").rotation_degrees
	Position()
	hideKeys()
	pass # Replace with function body.
	
func hideKeys():
	get_node("keyYellow").hide()
	get_node("keyBlue").hide()
	get_node("keyRed").hide()
	get_node("key").hide()
	get_node("keyOGA").hide()

func Position():
	if Global.location==2:
		Global.positionPlayer=2
		Global.lastRotationPlayer=0
		Global.maisLife()
		get_node("Altar").translation=get_node("altarPositionNull").translation
		get_node("Altar").rotation_degrees=get_node("altarPositionNull").rotation_degrees
		get_node("deadBody").translation=get_node("deadBodyPositionNull").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPositionNull").rotation_degrees
		pass
	elif Global.location==3:
		Global.positionPlayer=3
		Global.lastRotationPlayer=-90
		Global.menosLife()
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPosition").translation
		get_node("Altar").rotation_degrees=get_node("altarPosition").rotation_degrees
		get_node("keyRed").show()
		Global.keyRed=true
		get_node("deadBody").translation=get_node("deadBodyPosition").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPosition").rotation_degrees
		pass
	elif Global.location==4:
		Global.positionPlayer=4
		Global.lastRotationPlayer=-90
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPositionNull").translation
		get_node("Altar").rotation_degrees=get_node("altarPositionNull").rotation_degrees
		get_node("deadBody").translation=get_node("deadBodyPosition2").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPosition2").rotation_degrees
		pass
	elif Global.location==5:
		Global.positionPlayer=5
		Global.lastRotationPlayer=-90
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPosition2").translation
		get_node("Altar").rotation_degrees=get_node("altarPosition2").rotation_degrees
		get_node("deadBody").translation=get_node("deadBodyPositionNull").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPositionNull").rotation_degrees
		pass
	elif Global.location==6:
		Global.positionPlayer=6
		Global.lastRotationPlayer=-90
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPositionNull").translation
		get_node("Altar").rotation_degrees=get_node("altarPositionNull").rotation_degrees
		get_node("deadBody").translation=get_node("deadBodyPosition3").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPosition3").rotation_degrees
		pass
	elif Global.location==7:
		Global.positionPlayer=7
		Global.lastRotationPlayer=-90
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPosition3").translation
		get_node("Altar").rotation_degrees=get_node("altarPosition3").rotation_degrees
		get_node("deadBody").translation=get_node("deadBodyPositionNull").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPositionNull").rotation_degrees
		pass
	elif Global.location==8:
		Global.positionPlayer=8
		Global.lastRotationPlayer=90
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPositionNull").translation
		get_node("Altar").rotation_degrees=get_node("altarPositionNull").rotation_degrees
		get_node("deadBody").translation=get_node("deadBodyPosition4").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPosition4").rotation_degrees
		pass
	elif Global.location==9:
		Global.positionPlayer=9
		Global.lastRotationPlayer=90
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPosition4").translation
		get_node("Altar").rotation_degrees=get_node("altarPosition4").rotation_degrees
		get_node("keyOGA").show()
		get_node("key").show()
		Global.key=true
		get_node("deadBody").translation=get_node("deadBodyPositionNull").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPositionNull").rotation_degrees
		pass
	elif Global.location==10:
		Global.positionPlayer=10
		Global.lastRotationPlayerr=90
		Global.menosLife()
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPosition2").translation
		get_node("Altar").rotation_degrees=get_node("altarPosition2").rotation_degrees
		get_node("keyBlue").show()
		Global.keyBlue=true
		get_node("deadBody").translation=get_node("deadBodyPosition3").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPosition3").rotation_degrees
		pass
	elif Global.location==11:
		Global.positionPlayer=11
		Global.lastRotationPlayer=90
		Global.menosLife()
		Global.menosLife()
		get_node("Altar").translation=get_node("altarPosition3").translation
		get_node("Altar").rotation_degrees=get_node("altarPosition3").rotation_degrees
		get_node("keyYellow").show()
		Global.keyYellow=true
		get_node("deadBody").translation=get_node("deadBodyPosition2").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPosition2").rotation_degrees
		pass
	elif Global.location==12:
		Global.positionPlayer=12
		Global.lastRotationPlayer=90
		Global.maisLife()
		get_node("Altar").translation=get_node("altarPositionNull").translation
		get_node("Altar").rotation_degrees=get_node("altarPositionNull").rotation_degrees
		get_node("deadBody").translation=get_node("deadBodyPositionNull").translation
		get_node("deadBody").rotation_degrees=get_node("deadBodyPositionNull").rotation_degrees
		pass
	else:
		pass
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	Global.rotationPlayer=Global.lastRotationPlayer
	get_tree().change_scene("res://cenas/cena2.tscn")
	pass # Replace with function body.


	pass # Replace with function body.
