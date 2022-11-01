extends KinematicBody

var gravidade = 9.8
var velocidade = 2
var aceleracao = 1
var rotacao_velocidade = 0.5
var pulo_velocidade = 10
var direcao = Vector3()
var deslocamento = Vector3()
var minhaPosicao = Vector3()
var location = 1
var health=20
onready var ani = get_node("Health_Bar")

func _ready():
	
	pass

func _physics_process(delta):
	#Player.healthBar()
	
	var direcao = Vector3()
	deslocamento.y += gravidade * delta

	if Input.is_action_pressed("ui_up") :
		if Global.rotationPlayer==0:
			direcao += transform.basis.z    #transform.basis.z * velocidade
		elif Global.rotationPlayer==180:
			direcao -= transform.basis.z
		elif Global.rotationPlayer==90:
			direcao += transform.basis.x
		elif Global.rotationPlayer==-90:
			direcao -= transform.basis.x
	elif Input.is_action_pressed("ui_down"):
		if Global.rotationPlayer==0:
			direcao -= transform.basis.z
		elif Global.rotationPlayer==180:
			direcao += transform.basis.z
		elif Global.rotationPlayer==90:
			direcao -= transform.basis.x
		elif Global.rotationPlayer==-90:
			direcao += transform.basis.x
	if Input.is_action_pressed("ui_right"):
		rotate_y(-rotacao_velocidade * delta)
	elif Input.is_action_pressed("ui_left"):
		rotate_y(rotacao_velocidade * delta)
	
	
	if not is_on_floor():
		minhaPosicao.y -= gravidade * delta
	move_and_slide(minhaPosicao, Vector3.UP) 
	
	#if Input.is_action_just_pressed("ui_space") && is_on_floor():
	#	minhaPosicao.y = pulo_velocidade
	
	direcao = direcao.normalized()
	deslocamento = direcao * velocidade
	deslocamento.linear_interpolate(deslocamento, aceleracao * delta)
	move_and_slide(deslocamento, Vector3.UP)
	
func checklife():
	print(health)
	if health==0:
		get_tree().change_scene("res://cenas/Death.tscn")


func healthBar():
	if health==20:
	#	var state="100"
	#	if ani.get_current_animation() != state:
	#		ani.play(state)
		#$Health_Bar.play("all")
		get_node("Health_Bar").play("100")
	elif health==0:
		get_node("Health_Bar").play("0")
	elif health==1:
		get_node("Health_Bar").play("5")
	elif health==2:
		get_node("Health_Bar").play("10")
	elif health==3:
		get_node("Health_Bar").play("15")
	elif health==4:
		get_node("Health_Bar").play("20")
	elif health==5:
		get_node("Health_Bar").play("25")
	elif health==6:
		get_node("Health_Bar").play("30")
	elif health==7:
		get_node("Health_Bar").play("35")
	elif health==8:
		get_node("Health_Bar").play("40")
	elif health==9:
		get_node("Health_Bar").play("45")
	elif health==10:
		get_node("Health_Bar").play("50")
	elif health==11:
		get_node("Health_Bar").play("55")
	elif health==12:
		get_node("Health_Bar").play("60")
	elif health==13:
		get_node("Health_Bar").play("65")
	elif health==14:
		get_node("Health_Bar").play("70")
	elif health==15:
		get_node("Health_Bar").play("75")
	elif health==16:
		get_node("Health_Bar").play("80")
	elif health==17:
		get_node("ealth_Bar").play("85")
	elif health==18:
		get_node("Health_Bar").play("90")
	elif health==19:
		get_node("Health_Bar").play("95")
	
func _process(delta):
	#Player.healthBar()
	pass
	
#	for i in get_slide_count():
#		var colisao = get_slide_collision(i)
#		pass


