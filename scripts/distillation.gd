#CAUTION this is undoubtably a bad way to handle exoermiments. a dedicated, central and modular system would be infinitly better

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
			$"../CanvasLayer/Label".hide()
		if Input.is_action_just_pressed("ui_close_dialog"):
			$CanvasLayer.hide()
			$"../CanvasLayer/Label".show()


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../CanvasLayer/Label".show()
	$"../CanvasLayer/Label".text = "Press F to interact with the Distillation Apparatus"
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../CanvasLayer/Label".hide()
	near = false


func _on_start_pressed() -> void:
	#TODO add checks to wnsure all required fields are filled in
	Experiment()
	print("Run Experiment")

func Experiment() -> void:
	#TODO make this do something
	pass
