extends Node


var recipes: Array[ExperimentRecipe] = []


func _ready():
	load_recipes()

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
