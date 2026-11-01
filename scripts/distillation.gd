#CAUTION this is undoubtably a bad way to handle exoermiments. a dedicated, central and modular system would be infinitly better

extends Node2D

var near = false

const apparatus = "Distillation Stand"
var inputs: Array[String]
var output

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#TEST
	inputs = ["Impure Water"]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if near == true:
		if Input.is_action_just_pressed("Interact"):
#			$CanvasLayer.show()
#			$"../CanvasLayer/Label".hide()
			$Temporary.show()
			$"../CanvasLayer/Label".hide()
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
	print("Found Recipe: ", recipe.recipe_name)
	print("Output: ", recipe.output)
	Discovery.ammend(recipe.output)
