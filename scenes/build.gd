extends Node2D

@export var Buildings: Array[PackedScene]

var building = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Build_Mode"):
		Build()


func Build() -> void:
	building = true
	print("BUILD MODE")
	while building == true:
		if Input.is_action_just_pressed("one"):
			print("BUILD ONE")
			
		if Input.is_action_just_pressed("ui_cancel"):
			building = false
