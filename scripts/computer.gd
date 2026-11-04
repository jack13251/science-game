#TODO have a section that tells the player the current number of recipes discoverable at their stage
#TODO allow upgrading of the lab from the computer (either money needed or quests completed or both)

extends Node2D

var near = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
			$CanvasLayer.show()
			$"../UI/CanvasLayer/Interaction Prompt".hide()
		if Input.is_action_just_pressed("ui_close_dialog"):
			$CanvasLayer.hide()
			$"../UI/CanvasLayer/Interaction Prompt".show()


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".show()
	$"../UI/CanvasLayer/Interaction Prompt".text = "Press F to interact with the Computer"
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".hide()
	near = false
