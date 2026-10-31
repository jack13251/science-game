extends Node

var possible: Array[String] #list of all possible substances
var known: Array[String] #list of all substances known by the player

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func ammend(item):
	if item not in known:
		if item in possible: #shouldnt be possible for an item to be found and not be possible
			known.append(item)
			print(known.size())
		else:
			print("ERROR", ERR_DOES_NOT_EXIST)
	else:
		pass
