extends Control


var display_mode: int


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	hide()


func _on_disp_mode_item_selected(index: int) -> void:
	display_mode = index
	DisplayServer.window_set_mode(display_mode)
