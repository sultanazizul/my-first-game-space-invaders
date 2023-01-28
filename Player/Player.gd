extends KinematicBody2D

var bullet = preload("res://Bullet/Bullet.tscn")

export var speed = 100

func _ready():
	set_process(true)
	set_physics_process(true) 

func _process(delta):
	if Input.is_action_pressed("fire"):
	
		var bulletInstance = bullet.instance()
		bulletInstance.position = Vector2(position.x, position.y - 20)
		get_tree().get_root().add_child(bulletInstance)
		
func _physics_process(delta):
	if Input.is_action_pressed("kiri"):
		move_and_collide(Vector2(-speed * delta, 0))
	elif Input.is_action_pressed("kanan"):
		move_and_collide(Vector2(speed * delta, 0))
	

