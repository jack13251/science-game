#TODO have a section that tells the player the current number of recipes discoverable at their stage
#TODO allow upgrading of the lab from the computer (either money needed or quests completed or both)

extends Node2D

var near = false
var requirements: Array[int] = [1] #quest progress needed to unlock each upgrade
var current_level = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if visible:
		hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
			$CanvasLayer.show()
			$"../UI/CanvasLayer/Interaction Prompt".hide()
			$CanvasLayer/Label.text = "Current lab level: " + str(current_level)
		if Input.is_action_just_pressed("ui_close_dialog"):
			$CanvasLayer.hide()
			$"../UI/CanvasLayer/Interaction Prompt".show()
			$CanvasLayer/Label2.hide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".show()
	$"../UI/CanvasLayer/Interaction Prompt".text = "Press F to interact with the Computer"
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".hide()
	near = false


func _on_upgrade_pressed() -> void:
	var current_requirement = requirements[QuestManager.quests_completed - 1]
	print(current_requirement)
	if current_requirement == QuestManager.quests_completed:
		get_tree().change_scene_to_file("res://scenes/Lab 2.tscn")
		print("Lab Upgraded")
		current_level += 1
	else:
		$CanvasLayer/Label2.show()
