extends Node2D

@export var Buildings: Array[PackedScene]

var build_mode = false
var selected_building

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Build_Mode"):
		print("BUILD MODE")
		build_mode = true
	if build_mode == true:
		if Input.is_action_just_pressed("one"):
			print("BUILD SELECTION 1")
			selected_building = Buildings[0].instantiate()
			$".".add_child(selected_building)


func Build() -> void:
	pass
