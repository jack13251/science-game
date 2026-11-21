#CAUTION this script doesn't do anything right now as it doesn't work and therefore has been removed from
#the scene. It is meant to handle the box logic but persist between the player leaving and entering the scene.
#either fix or delete. There is definitley an easier way to do this anyway.

#extends Node2D
#
#var opened: bool = false
#var near: bool = false
#
#var box
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#if opened == true:
		#pass # replace with queue_free on box once box isn't null
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#if QuestManager.current_level == 1:
##		box = get_tree().current_scene.get_node("/root/Node2D/Box") #BUG box is a null value therefore does not show correctly or work
		#if opened == false:
##BUG box does not show as it returns null
			#box.show() #\,asfkhafjb;svjhdvdxbvj\b;bdhhfv\hvf;fjabjbsdjdfbjbfjsbfjdbfkjbg -How this makes me feel right about now
			#if near == true:
				#print("NEAR")
				#$"UI/CanvasLayer/Interaction Prompt".text = "Press 'F' to open the box"
				#if Input.is_action_just_pressed("Interact"):
					#print("OPEN")
					#open()
#
#
#func _on_area_2d_body_entered(body: Node2D) -> void:
	#near = true
#
#
#func _on_area_2d_body_exited(body: Node2D) -> void:
	#print("AWAY")
	#near = false
#
#
#func open() -> void:
	#$"UI/CanvasLayer/Box opened popup".show()
#
#
#func _on_button_pressed() -> void:
	#opened = true
	#$Node2D.queue_free()
