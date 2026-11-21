#TODO test increase of enemy health between rounds
#TODO add diff enemy types although theses will likely be different scenes although this isn't definite

extends PathFollow2D

@export var health: int = 100 #starting health of this enemy 
@export var reward: int = 1 #currency the player recieves as reward upon killing this enemy


func _ready() -> void:
	if QuestManager.current_level == 1: #should spawn enemies with 20% extra health for round 2 TEST this though
		health += health * 0.2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$".".progress += 100 * delta
	if $".".progress_ratio == 1:
		$".".queue_free()
	if health <= 0:
		var parent = $".".get_parent().get_parent()
		parent.currency += 1
		var money: Label = get_node("/root/Node2D/CanvasLayer/Money")
		money.text = "Money: " + str($".".get_parent().get_parent().currency)
		$".".queue_free()
