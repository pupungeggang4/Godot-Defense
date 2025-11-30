extends Node2D

@onready var hp_bar = get_node('HPBar')
@export var hp = 60.0
@export var hp_max = 60.0

func _process(delta):
    hp_bar.size.x = hp / hp_max * 40.0
