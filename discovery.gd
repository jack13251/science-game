extends Node

var possible_l: Array[String] #list of all possible substances
var possible_g: Array[String]
var possible_s: Array[String]

var known_l: Array[String]
var known_g: Array[String]
var known_s: Array[String] #list of all substances known by the player

var count: int #total of all known lists

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func ammend(item):
	if item in possible_l:
		if item not in known_l: #shouldnt be possible for an item to be found and not be possible
			known_l.append(item)
			count += 1
			QuestManager.update_progress()
			print(count)
		else:
			print("ERROR", ERR_DOES_NOT_EXIST)
	elif item in possible_g:
		if item not in known_g:
			known_g.append(item)
			count += 1
			QuestManager.update_progress()
			print(count)
	elif item in possible_s:
		if item not in known_s:
			known_s.append(item)
			count += 1
			QuestManager.update_progress()
			print(count)
		pass
