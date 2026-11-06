extends Control

var block = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	$".".hide()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if block == false:
		if Input.is_action_just_pressed("ui_cancel"): #add functionality to esc to close the pause menu
			show()
			get_tree().paused = true
