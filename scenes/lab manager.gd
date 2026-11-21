extends Node2D

var opened: bool = false
var near: bool = false

var box

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	box = get_tree().current_scene.get_node("Box")
	print(box)
	print("LAB LEVEL", QuestManager.current_level)
	if opened == true:
		pass # replace with


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print("LAB LEVEL", QuestManager.current_level)
	if QuestManager.current_level == 1:
		#box = get_tree().current_scene.get_node("Box") #BUG box is a null value
		box = $Box
		box = $Box/Sprite2D
		print("LEVEL 1")
		if opened == false:
			print("SHOWING")
			box.show()
			if near == true:
				print("NEAR")
				$"UI/CanvasLayer/Interaction Prompt".text = "Press 'F' to open the box"
				if Input.is_action_just_pressed("Interact"):
					print("OPEN")
					open()


func _on_area_2d_body_entered(body: Node2D) -> void:
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	print("AWAY")
	near = false


func open() -> void:
	$"UI/CanvasLayer/Box opened popup".show()


func _on_button_pressed() -> void:
	opened = true
	$Node2D.queue_free()
