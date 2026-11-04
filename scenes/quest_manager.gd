#SUGGESTION create a resource to load quests from instead of having them inside the script

#NOTE im not decided yet how game progression will exactly work so for now quests will just be based on making a number of discoveries

extends VBoxContainer

var discoveries_needed = 2
var count = Discovery.count


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_quest() -> void:
	pass

func update_progress() -> void:
	$ProgressBar.set_value_no_signal(count)
