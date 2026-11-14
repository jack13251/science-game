#TODO allow the player to be able to close build mode once opened or have building as a conctant option atleast before a wave eliminating the need for overly complex modes

extends Node2D

@export var Buildings: Array[PackedScene]

var build_mode = false
var selected_building: Node2D

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#	if Input.is_action_just_pressed("Build_Mode"): #NOTE this is what adds build mode back to the game
#		print("BUILD MODE")
#		build_mode = true
#	if build_mode == true:
		if Input.is_action_just_pressed("one"):
			print("BUILD SELECTION 1")
			selected_building = Buildings[0].instantiate()
			$".".add_child(selected_building)
			var pos = round(($"../CharacterBody2D".global_position + Vector2(559, 243)) / 64) * 64 #- Vector2(32, 0) ALERT to be correct to the tile map grid this offset is needed
			selected_building.global_position = pos
