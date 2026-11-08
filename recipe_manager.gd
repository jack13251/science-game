extends Node


var recipes: Array[ExperimentRecipe] = []


func _ready():
	load_recipes()
	
### TEST data for recipe search ###
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

	var database: RecipeDatabase = load("res://Recipes/RecipeDatabase.tres")

	if database == null:
		print("Could not load Recipe Database!")
		return

	for recipe in database.recipes:

		if recipe is ExperimentRecipe:

			recipes.append(recipe)

			if recipe.output not in Discovery.possible_l and recipe.state == "Liquid":
				Discovery.possible_l.append(recipe.output)

			if recipe.output not in Discovery.possible_g and recipe.state == "Gas":
				Discovery.possible_g.append(recipe.output)

			if recipe.output not in Discovery.possible_s and recipe.state == "Solid":
				Discovery.possible_s.append(recipe.output)

	print("Loaded recipes: ", recipes.size())

func find_recipe(player_inputs: Array[String], player_apparatus: String, player_temp: String) -> ExperimentRecipe:
	for recipe in recipes:
		if recipe.apparatus != player_apparatus:
			continue
		if recipe.inputs.size() != player_inputs.size():
			continue
		if recipe.temperature != player_temp:
			continue
		var inputs_match = true
		for input in recipe.inputs:
			if not player_inputs.has(input):
				inputs_match = false
				break
		if inputs_match:
			return recipe
	return null
