extends Resource

class_name ExperimentRecipe

@export var recipe_name: String

@export var inputs: Array[String]

@export var output: String

@export_multiline var description: String

@export var apparatus: String

@export var temperature: String #likely to be just low/med/high CAUTION this is not in the game yet

@export var state: String
