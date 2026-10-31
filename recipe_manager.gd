extends Node


var recipes: Array[ExperimentRecipe] = []


func _ready():
	load_recipes()
	
#### TEST of recipe search ###
#	var test_inputs: Array[String] = [
#		"Impure Water",
#		]
#	var test_apparatus = "Distillation Stand"
#	var result = find_recipe(test_inputs, test_apparatus)
#	if result != null:
#		print("Found recipe: ", result.recipe_name)
#		print("Output: ", result.output)
#	else:
#		print("No recipe found!")
### END of test ###

func load_recipes():

	var directory = DirAccess.open("res://Recipes")

	if directory == null:
		print("Could not find Recipes folder!")
		return

	for file in directory.get_files():

		if file.ends_with(".tres"):

			var recipe = load("res://Recipes/" + file)

			if recipe is ExperimentRecipe:
				recipes.append(recipe)

	print("Loaded recipes: ", recipes.size())

func find_recipe(player_inputs: Array[String], player_apparatus: String) -> ExperimentRecipe:
	for recipe in recipes:
		if recipe.apparatus != player_apparatus:
			continue
		if recipe.inputs.size() != player_inputs.size():
			continue
		var inputs_match = true
		for input in recipe.inputs:
			if not player_inputs.has(input):
				inputs_match = false
				break
		if inputs_match:
			return recipe
	return null
