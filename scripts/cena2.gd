extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#Global.rotationPlayer=get_node("Player").rotation_degrees.y
	Global.lastLocation=Global.location
	positionPlayer()
	get_node("OmniLight").hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func positionPlayer():
	if Global.positionPlayer==1:
		get_node("Player").translation=get_node("MeshInstance/Position3D").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D").rotation_degrees
	elif Global.positionPlayer==2:
		get_node("Player").translation=get_node("MeshInstance/Position3D2").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D2").rotation_degrees
	elif Global.positionPlayer==3:
		get_node("Player").translation=get_node("MeshInstance/Position3D3").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D3").rotation_degrees
	elif Global.positionPlayer==4:
		get_node("Player").translation=get_node("MeshInstance/Position3D4").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D4").rotation_degrees
	elif Global.positionPlayer==5:
		get_node("Player").translation=get_node("MeshInstance/Position3D5").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D5").rotation_degrees
	elif Global.positionPlayer==6:
		get_node("Player").translation=get_node("MeshInstance/Position3D6").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D6").rotation_degrees
	elif Global.positionPlayer==7:
		get_node("Player").translation=get_node("MeshInstance/Position3D7").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D7").rotation_degrees
	elif Global.positionPlayer==8:
		get_node("Player").translation=get_node("MeshInstance/Position3D8").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D8").rotation_degrees
	elif Global.positionPlayer==9:
		get_node("Player").translation=get_node("MeshInstance/Position3D9").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D9").rotation_degrees
	elif Global.positionPlayer==10:
		get_node("Player").translation=get_node("MeshInstance/Position3D10").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D10").rotation_degrees
	elif Global.positionPlayer==11:
		get_node("Player").translation=get_node("MeshInstance/Position3D11").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D11").rotation_degrees
	elif Global.positionPlayer==12:
		get_node("Player").translation=get_node("MeshInstance/Position3D12").translation
		get_node("Player").rotation_degrees=get_node("MeshInstance/Position3D12").rotation_degrees
	pass

func _on_Area_body_entered(body):
	Global.location=0
	Global.rotationPlayer=0
	Global.positionPlayer=1
	get_tree().change_scene("res://cenas/cena1.tscn")
	pass # Replace with function body.

func _on_Area_body_entered2(body):
	Global.positionPlayer=2
	Global.location=2
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	print("1")
	pass # Replace with function body.

func _on_Area_body_entered3(body):
	Global.positionPlayer=3
	Global.location=3
	#key red
	if Global.keyBlue==true:
		Global.rotationPlayer=180
		get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered4(body):
	Global.positionPlayer=4
	Global.location=4
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered5(body):
	Global.positionPlayer=5
	Global.location=5
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered6(body):
	Global.positionPlayer=6
	Global.location=6
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered7(body):
	Global.positionPlayer=7
	Global.location=7
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered8(body):
	Global.positionPlayer=8
	Global.location=8
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered9(body):
	Global.positionPlayer=9
	Global.location=9
	#key
	#key oga
	if Global.keyRed==true:
		Global.rotationPlayer=180
		get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered10(body):
	Global.positionPlayer=10
	Global.location=10
	#key blue
	if Global.keyYellow==true:
		Global.rotationPlayer=180
		get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered11(body):
	Global.positionPlayer=11
	Global.location=11
	#key yellow
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.

func _on_Area_body_entered12(body):
	Global.positionPlayer=12
	Global.location=12
	Global.rotationPlayer=180
	get_tree().change_scene("res://cenas/cena3.tscn")
	pass # Replace with function body.
