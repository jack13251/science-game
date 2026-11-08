extends Node

const SAVE_PATH = "user://savegame.json"

func save_game() -> void:

	var save_data = {
		"discovered_liquids": Discovery.known_l,
		"discovered_solids": Discovery.known_s,
		"discovered_gases": Discovery.known_g,
		"lab": QuestManager.current_level,
		"quests_completed": QuestManager.quests_completed
	}

	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)

	if file == null:
		print("Failed to open save file!")
		return

	file.store_string(JSON.stringify(save_data, "\t"))
	file.close()

	print("Game saved!")


func load_game() -> void:

	if not FileAccess.file_exists(SAVE_PATH):
		print("No save file found!")
		return

	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)

	if file == null:
		print("Failed to open save file!")
		return

	var json_text = file.get_as_text()
	file.close()

	var json = JSON.new()
	var error = json.parse(json_text)

	if error != OK:
		print("Failed to parse save file!")
		return

	var save_data = json.data

	print("Game loaded!")
	print(save_data)
	
	save_data = json.data

	Discovery.known_l.append_array(save_data["discovered_liquids"])
	Discovery.known_s.append_array(save_data["discovered_solids"])
	Discovery.known_g.append_array(save_data["discovered_gases"])
	QuestManager.current_level = save_data["lab"]
	QuestManager.quests_completed = save_data["quests_completed"]
