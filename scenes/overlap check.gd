#TODO Change red modulation to playing of animation WARNING this will likely require replacing the sprite 2d with an animated one

extends Node2D

var valid = true
var near = false
var choice: int

#starting tower stats
@export_category("Stats")
@export var Cooldown: float = 3
@export var Damage: float = 0
@export var Type: String = "N/A" #not yet in the game
@export var Range_multiplier: float = 1
#NOTE maybe add a stat for how many ennemies can be attacked at once (as in per interval of cooldown)

var timer: Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Control.hide()
	update()
	timer = $Node2D/Cooldown
	timer.one_shot = false
	timer.wait_time = Cooldown
	timer.autostart = true
	if timer.is_stopped():
		timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) ->void:
	var prompt: Label = get_tree().current_scene.get_node("UI/CanvasLayer/Interaction Prompt")
	if len($Node2D/Area2D.get_overlapping_areas()) > 0:
		$".".queue_free()
	if near == true:
		prompt.text = "Press 'F' to set ammo type for this building"
		prompt.show()
		if Input.is_action_just_pressed("Interact"):
			$Control.show()

 
func _on_cooldown_timeout() -> void:
	var targets: Array[Area2D] = $Node2D/Range.get_overlapping_areas()
	print(targets)
	if len(targets) == 0:
		return
	var choice: int = randi_range(0, len(targets) - 1)
	var enemy: PathFollow2D = targets[choice].get_parent().get_parent()
	print(enemy)
	enemy.health -= Damage
	modulate = Color(0.788, 0.0, 0.0, 1.0)
	await get_tree().process_frame #flashes too fast
	await  get_tree().process_frame
	modulate = Color(1.0, 1.0, 1.0, 1.0)
	print(enemy.health)

func update() -> void:
	$Control/ColorRect/OptionButton.clear()
	$Control/ColorRect/OptionButton.add_separator("Select Input")
	for i in Discovery.known_l:
		$Control/ColorRect/OptionButton.add_item(i)
		print("item added")
	$Control/ColorRect/OptionButton.select(0)

func _on_interaction_body_entered(body: Node2D) -> void:
	near = true


func _on_interaction_body_exited(body: Node2D) -> void:
	near = false
	var prompt: Label = get_tree().current_scene.get_node("UI/CanvasLayer/Interaction Prompt")
	prompt.hide()


func _on_button_pressed() -> void:
	#TODO set damage to damage value of recipe
	choice = $Control/ColorRect/OptionButton.selected - 1
	if choice > -1:
		Damage = RecipeManager.recipes[choice].damage
	else:
		print("NO CHOICE MADE")
		Damage = 0
	$Control.hide()
	print(Damage)
