#BUG label shows when the scene first starts but doesn't for other versions of the label

extends Node2D

var near = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
			get_tree().change_scene_to_file("res://scenes/tower defence.tscn")



func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".text = "Press 'F' to enter the hallway"
	$"../UI/CanvasLayer/Interaction Prompt".show()
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".hide()
	near = false
