extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.checkMusic()
	get_node("OmniLight").hide()
	if Global.lastLocation==1:
		get_node("Player").translation=get_node("Position3D2").translation
		get_node("Player").rotation_degrees=get_node("Position3D2").rotation_degrees	
	else:
		get_node("Player").translation=get_node("Position3D").translation
		get_node("Player").rotation_degrees=get_node("Position3D").rotation_degrees
	pass # Replace with function body.
	
func _on_Area_body_entered(body):
	Global.positionPlayer=1
	Global.location=1
	Global.rotationPlayer=180
	if body==get_node("Player"):
		get_tree().change_scene("res://cenas/cena2.tscn")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



	pass # Replace with function body.


func _on_Area_body_entered2(body):
	if Global.key==true:
		get_tree().change_scene("res://cenas/Win.tscn")
		
	pass # Replace with function body.
