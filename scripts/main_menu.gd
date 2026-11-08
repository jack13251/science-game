extends Control


func _ready() -> void:
	MenuManager.block = true
	$"UI/CanvasLayer/Pause menu".block = true
	
	$UI/CanvasLayer/Label.hide()
	$"UI/CanvasLayer/Quest prompt".hide()


func _process(delta: float) -> void:
	$"UI/CanvasLayer/Pause menu".PROCESS_MODE_DISABLED


func _on_continue_pressed() -> void:
	SaveManager.load_game()


func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Lab1.tscn") #plays game without loading but will overwrite any old save so save slots could be a feauture feature to add


func _on_options_pressed() -> void:
	$"UI/CanvasLayer/Settings Menu".show()


func _on_credits_pressed() -> void:
	pass # Replace with credits


func _on_quit_pressed() -> void:
	get_tree().quit()
