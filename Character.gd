extends Node2D
class_name Character

@export var is_player : bool
@export var cur_hp : int = 25
@export var max_hp : int = 25

@export var combat_action : Array
@export var opponent : Node

@onready var health_bar : ProgressBar = get_node("HealthBar")
@onready var health_text : Label = get_node("HealthBar/HealthBarText")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health_bar.max_value = max_hp


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _update_health_bar ():
	health_bar.value = cur_hp
	health_text.text = str(cur_hp, " / ", max_hp)
