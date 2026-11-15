extends Node2D

var valid = true

#starting tower stats
@export_category("Stats")
@export var Cooldown: float = 3
@export var Damage: float = 3 #NOTE this probably isn't needed once ammo selection is added
#@export var ammo TODO make ammo selectable in game maybe this doesn't need to be here though
@export var Type: String = "N/A" #not yet in the game
@export var Range_multiplier: float = 1
#NOTE maybe add a stat for how many ennemies can be attacked at once (as in per interval of cooldown)

var timer: Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer = $Node2D/Cooldown
	timer.one_shot = false
	timer.wait_time = Cooldown
	timer.autostart = true
	if timer.is_stopped():
		timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) ->void:
	if len($Node2D/Area2D.get_overlapping_areas()) > 0:
		$".".queue_free()

 
func _on_cooldown_timeout() -> void:
	print("timeout")
	var targets: Array[Area2D] = $Node2D/Range.get_overlapping_areas()
	print(targets)
	if len(targets) == 0:
		return
	var choice: int = randi_range(0, len(targets) - 1)
	var enemy: PathFollow2D = targets[choice].get_parent().get_parent()
	print(enemy)
	enemy.health -= 1
	print(enemy.health)
