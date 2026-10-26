#TODO add sprinting with shift and option for WASD controls instead

extends CharacterBody2D

var speed: float = 200.0

func _physics_process(_delta):
	var direction = Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
		 "ui_down"
	)
	
	velocity = direction * speed
	move_and_slide()
