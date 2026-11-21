extends Path2D

@export var enemy_scene: PackedScene
@export var interval: float = 5 #the interval between enemies spawning
@export var enemies: int #the number of enemies to spawn this wave
var spawned: int = 0 #number of enemies spwaned in this round

#NOTE maybe do multiple waves per lab

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Enemy1.wait_time = interval


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_enemy_1_timeout() -> void:
	if spawned < enemies:
		var enemy = enemy_scene.instantiate()
		$".".add_child(enemy)
		spawned += 1
	else:
		print("WAVE WON") #TODO change this to show the player theu have won the wave
