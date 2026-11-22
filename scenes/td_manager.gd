#TODO make check for which area (enemy) reached the door so that different damage can be dealt per enemy type
#CAUTION enemies need to take damage individualy (so will likely need to be handled in the enemy script)

extends Node2D

@export var health = 100 #NOTE a value as high as this (100) should only be used if health persits across rounds and does not reset.
@export var currency: int = 5 #amount of currency the player starts with in order to place first buildings
#CAUTION SET THE ABOVE VALUES TO SOMETHING THAT MAKES SENSE FOR THE GAME 

var near = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"Label".text = "❤️ " + str(health)
	$CanvasLayer/Money.text = "Money: " + str(currency)
	$"UI/CanvasLayer/Quest prompt".hide() #NOTE this means quests aren't a thing in this scene which may need changing


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if health <= 0:
		game_lost()
	if near == true:
		$"UI/CanvasLayer/Interaction Prompt".text = "Press 'F' to return to the lab"
		$"UI/CanvasLayer/Interaction Prompt".show()
		if Input.is_action_just_pressed("Interact"):
			if QuestManager.current_level == 0: #NOTE offset of 1
				get_tree().change_scene_to_file("res://scenes/Lab1.tscn")
			elif QuestManager.current_level == 1:
				get_tree().change_scene_to_file("res://scenes/Lab 2.tscn")



func _on_door_area_entered(area: Area2D) -> void:
	health -= 1
	$"Label".text = "❤️ " + str(health)


func game_lost() -> void:
	$"Label".text = "Round Lost"


func _on_area_2d_body_entered(body: Node2D) -> void:
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	near = false
	$"UI/CanvasLayer/Interaction Prompt".hide()
