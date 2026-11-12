#TODO make check for which area (enemy) reached the door so that different damage can be dealt per enemy type

extends Node2D

var health = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = "❤️ " + str(health)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_door_area_entered(area: Area2D) -> void:
	print(area)
	print("HIT")
	health -= 1
	$Label.text = "❤️ " + str(health)
