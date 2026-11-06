extends Node2D

var near = false
var done = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var label: Label = get_tree().current_scene.get_node("UI/CanvasLayer/Interaction Prompt")
	if near == true:
		$"../UI/CanvasLayer/Interaction Prompt".text = "test"
		$"../UI/CanvasLayer/Interaction Prompt".show()
		label.show()
		label.text = "Press F to open the box"
		if Input.is_action_just_pressed("Interact"):
			open()
			$"../UI/CanvasLayer/Interaction Prompt".hide()
	else:
		label.hide()


func open() -> void:
	$"../UI/CanvasLayer/Box opened popup".show()
	#TODO add the listed substances to the correct known substances lists and make sure they're in possible also
	done = true


func _on_area_2d_body_entered(body: Node2D) -> void:
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	near = false
	$"../UI/CanvasLayer/Interaction Prompt".hide()


func _on_button_pressed() -> void:
	if done == true:
		$"../UI/CanvasLayer/Box opened popup".hide()
		$".".queue_free()
