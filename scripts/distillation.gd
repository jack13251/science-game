#CAUTION this is undoubtably a bad way to handle exoermiments. a dedicated, central and modular system would be infinitly better

#TODO add message if input matches output
#TODO add output showing output if already known or cut this feature if it will be too difficult

extends Node2D

var near = false

const apparatus = "Distillation Stand"
var inputs: Array[String]
var output


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
#			$CanvasLayer.show()
#			$"../CanvasLayer/Label".hide()
			$Temporary.show()
			$"../CanvasLayer/Label".hide()
			update()
		if Input.is_action_just_pressed("ui_close_dialog"):
#			$CanvasLayer.hide()
#			$"../CanvasLayer/Label".show()
			$Temporary.hide()
			$"../CanvasLayer/Label".show()


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../CanvasLayer/Label".show()
	$"../CanvasLayer/Label".text = "Press F to interact with the Distillation Apparatus"
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../CanvasLayer/Label".hide()
	near = false


func _on_start_pressed() -> void:
	print()
	print("SEARCHING FOR MATCHES... ")
	print()
	Experiment()

func Experiment() -> void:
	var recipe = RecipeManager.find_recipe(inputs, apparatus)
	if recipe != null:
		print("Found Recipe: ", recipe.recipe_name)
		print("Output: ", recipe.output)
		Discovery.ammend(recipe.output)
	else:
		print("No Current Recipe")


func _on_button_pressed() -> void:
	inputs.clear()
	inputs.append($Temporary/VBoxContainer/OptionButton.get_item_text($Temporary/VBoxContainer/OptionButton.selected))
	Experiment()

func update() -> void:
	$Temporary/VBoxContainer/OptionButton.clear()
	$Temporary/VBoxContainer/OptionButton.add_separator("Select Input")
	for i in Discovery.known_l:
		$Temporary/VBoxContainer/OptionButton.add_item(i)
		print("item added")
	$Temporary/VBoxContainer/OptionButton.select(0)
