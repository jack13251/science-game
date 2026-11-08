extends Control

var block = false
var confirmed = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if block == false:
		if Input.is_action_just_pressed("ui_cancel"): #TODO add functionality to esc to close the pause menu
			show()
			get_tree().paused = true


func _on_resume_pressed() -> void:
	hide()
	get_tree().paused = false


func _on_options_pressed() -> void:
	$"../Settings Menu".show()


func _on_save_pressed() -> void:
	SaveManager.save_game()


func _on_main_menu_pressed() -> void:
	$ConfirmationDialog.title = "Quit to main menu?"
	$ConfirmationDialog.popup()
	await $ConfirmationDialog.confirmed or $ConfirmationDialog.canceled 
	if confirmed == true:
		confirmed = false
		get_tree().paused = false
		get_tree().change_scene_to_file("res://scenes/main menu.tscn")


func _on_desktop_pressed() -> void:
	$ConfirmationDialog.title = "Quit to desktop?"
	$ConfirmationDialog.popup()
	await $ConfirmationDialog.confirmed or $ConfirmationDialog.canceled 
	if confirmed == true:
		confirmed = false
		get_tree().quit()


func _on_confirmation_dialog_confirmed() -> void:
	confirmed = true
