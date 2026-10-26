extends Node2D

var near = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
			print("COMPUTER INTERACTED")


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../CanvasLayer/Label".show()
	$"../CanvasLayer/Label".text = "Press F to interact with the Computer"
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../CanvasLayer/Label".hide()
	near = false
