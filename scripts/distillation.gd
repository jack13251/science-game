#CAUTION this is undoubtably a bad way to handle exoermiments. a dedicated, central and modular system would be infinitly better


extends Node2D

var near = false

const apparatus = "Distillation Stand"
var inputs: Array[String]
var temperature: String
var output


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
#			$CanvasLayer.show()
#			$"../CanvasLayer/Label".hide()
			$Temporary.show()
			$"../UI/CanvasLayer/Interaction Prompt".hide()
			update()
			MenuManager.block = true
		if Input.is_action_just_pressed("ui_close_dialog"):
#			$CanvasLayer.hide()
#			$"../CanvasLayer/Label".show()
			$Temporary.hide()
			$"../UI/CanvasLayer/Interaction Prompt".show()
			MenuManager.block = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".show()
	$"../UI/CanvasLayer/Interaction Prompt".text = "Press F to interact with the Distillation Apparatus"
	near = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$"../UI/CanvasLayer/Interaction Prompt".hide()
	near = false


func _on_start_pressed() -> void:
	print()
	print("SEARCHING FOR MATCHES... ")
	print()


func Experiment() -> void:
	var recipe = RecipeManager.find_recipe(inputs, apparatus, temperature)
	if recipe != null:
		print("Found Recipe: ", recipe.recipe_name)
		print("Output: ", recipe.output)
		if recipe.inputs[0] == recipe.output:
			$Temporary/Label.text = "Repeated distillation of a pure liquid achieves nothing"
		elif recipe.output not in Discovery.known_l: #only needs to check liquids as distillation only produces liquids
			$Temporary/Label.text = "You've discovered " + recipe.output
		else:
			$Temporary/Label.text = "You already discovered that"
		Discovery.ammend(recipe.output)
	else:
		print("No Current Recipe")
		$Temporary/Label.text = "You must fill in all fields in order to conduct an experiment"




func _on_button_pressed() -> void:
	inputs.clear()
	inputs.append($Temporary/VBoxContainer/OptionButton.get_item_text($Temporary/VBoxContainer/OptionButton.selected))
	temperature = $Temporary/VBoxContainer/OptionButton2.get_item_text($Temporary/VBoxContainer/OptionButton2.selected)
	Experiment()
	
	
func update() -> void:
	$Temporary/VBoxContainer/OptionButton.clear()
	$Temporary/VBoxContainer/OptionButton.add_separator("Select Input")
	for i in Discovery.known_l:
		$Temporary/VBoxContainer/OptionButton.add_item(i)
		print("item added")
	$Temporary/VBoxContainer/OptionButton.select(0)
