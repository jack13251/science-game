extends Path2D

@export var enemy_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Enemy1.wait_time = 5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_enemy_1_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	$".".add_child(enemy)
