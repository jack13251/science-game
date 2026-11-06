#SUGGESTION create a resource to load quests from instead of having them inside the script

#NOTE im not decided yet how game progression will exactly work so for now quests will just be based on making a number of discoveries

extends VBoxContainer

var quests = [2] #list of discoveries needed at each quest.
var discoveries_needed = 2
var quests_completed = 0
var current_level = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_quest() -> void:
	pass

func update_progress() -> void:
	print("CALLED")
	var Bar: ProgressBar =  get_tree().current_scene.get_node("UI/CanvasLayer/Quest prompt/ProgressBar")
	var Steps: Label = get_tree().current_scene.get_node("UI/CanvasLayer/Quest prompt/Steps")
	Bar.set_value_no_signal(Discovery.count)
	if Bar.value == Bar.max_value:
		quests_completed += 1
		Steps.text = "•Interact with the computer when you're \n ready to progress."
		set_quest()
