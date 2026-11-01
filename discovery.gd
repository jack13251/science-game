extends Node

var possible_l: Array[String] #list of all possible substances
var possible_g: Array[String]
var possible_s: Array[String]

var known_l: Array[String]
var known_g: Array[String]
var known_s: Array[String] #list of all substances known by the player

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func ammend(item):
	if item in possible_l:
		if item not in known_l: #shouldnt be possible for an item to be found and not be possible
			known_l.append(item)
			print(known_l.size())
		else:
			print("ERROR", ERR_DOES_NOT_EXIST)
	else:
		pass
