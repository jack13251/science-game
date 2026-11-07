extends Control


var display_mode: int
var master_volume: int
var music_volume: int
var sfx_volume: int

var config = ConfigFile.new()
var error = config.load("user://settings.cfg")

var changed = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	load_settings()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if visible and changed == true:
		update_menu()


func _on_button_pressed() -> void:
	save_settings()
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
		AudioServer.set_bus_volume_linear(1, music_volume) #mot sure what range the value for linear should be. currently 0 to 100 but it may be better suited with 0 to 1 which is best done by changing the slider max to 1 and the step to 0.01


func _on_sfx_drag_ended(value_changed: bool) -> void:
	if value_changed:
		sfx_volume = $ColorRect/VBoxContainer/SFX/SFX.value
		AudioServer.set_bus_volume_linear(2, sfx_volume) #mot sure what range the value for linear should be. currently 0 to 100 but it may be better suited with 0 to 1 which is best done by changing the slider max to 1 and the step to 0.01


func load_settings() -> void:
	if error == OK:
		master_volume = config.get_value("Audio", "Master")
		AudioServer.set_bus_volume_linear(0, master_volume)
		music_volume = config.get_value("Audio", "Music")
		AudioServer.set_bus_volume_linear(1, music_volume)
		sfx_volume = config.get_value("Audio", "sfx")
		AudioServer.set_bus_volume_linear(2, sfx_volume)

		
		display_mode = config.get_value("Display", "Mode")
		DisplayServer.window_set_mode(display_mode)
		
		
		
		changed = true


func save_settings() -> void:
	config.set_value("Audio", "Master", master_volume)
	config.set_value("Audio", "Music", music_volume)
	config.set_value("Audio", "sfx", sfx_volume)
	
	config.set_value("Display", "Mode", display_mode)
	
	config.save("user://settings.cfg")
	print("Settings saved!")


func update_menu() -> void:
	print("updating menu")
	$ColorRect/VBoxContainer/Master/Master.set_value_no_signal(master_volume)
	$ColorRect/VBoxContainer/Music/Music.set_value_no_signal(music_volume)
	$ColorRect/VBoxContainer/SFX/SFX.set_value_no_signal(sfx_volume)
	
	$"ColorRect/VBoxContainer/Disp mode/Disp mode".select(display_mode)
	changed = false
