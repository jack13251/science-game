extends Node2D

var valid = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) ->void:
	if len($Node2D/Area2D.get_overlapping_areas()) > 0:
		$".".queue_free()

 
