extends Control


var display_mode: int
var master_volume: int
var music_volume: int
var sfx_volume: int


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


func _on_master_drag_ended(value_changed: bool) -> void:
	if value_changed:
		master_volume = $ColorRect/VBoxContainer/Master/Master.value
		AudioServer.set_bus_volume_linear(0, master_volume) #mot sure what range the value for linear should be. currently 0 to 100 but it may be better suited with 0 to 1 which is best done by changing the slider max to 1 and the step to 0.01


func _on_music_drag_ended(value_changed: bool) -> void:
	if value_changed:
		music_volume = $ColorRect/VBoxContainer/Music/Music.value
		AudioServer.set_bus_volume_linear(1, master_volume) #mot sure what range the value for linear should be. currently 0 to 100 but it may be better suited with 0 to 1 which is best done by changing the slider max to 1 and the step to 0.01


func _on_sfx_drag_ended(value_changed: bool) -> void:
	if value_changed:
		sfx_volume = $ColorRect/VBoxContainer/SFX/SFX.value
		AudioServer.set_bus_volume_linear(2, master_volume) #mot sure what range the value for linear should be. currently 0 to 100 but it may be better suited with 0 to 1 which is best done by changing the slider max to 1 and the step to 0.01
