#TODO make check for which area (enemy) reached the door so that different damage can be dealt per enemy type
#CAUTION enemies need to take damage individualy (so will likely need to be handled in the enemy script)

extends Node2D

var health = 3 #CAUTION set to real value after testing 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"Label".text = "❤️ " + str(health)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if health <= 0:
		game_lost()
#	if Input.is_action_just_pressed("Build_Mode"):
#		Build()



func _on_door_area_entered(area: Area2D) -> void:
	health -= 1
	$"Label".text = "❤️ " + str(health)


func game_lost() -> void:
	$"Label".text = "Round Lost"


func Build() -> void: #grid build system 64x64 for placing defence structures
	pass
