extends Node2D

var near = false
func _ready() -> void:
	Discovery.possible_l.append("Impure Water")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
			print("SINK INTERACTED")
			Discovery.ammend("Impure Water") #ALERT fix


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../CanvasLayer/Label".show()
	$"../CanvasLayer/Label".text = "Press F to interact with the Sink"
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../CanvasLayer/Label".hide()
	near = false
