extends Node2D

@onready var hp_bar = get_node('HPBar')
@export var hp = 60.0
@export var hp_max = 60.0
@export var attack = 0
@export var attack_speed = 1
@export var attack_cool = 1

func _ready(delta):
    pass

func _process(delta):
    hp_bar.size.x = hp / hp_max * 40.0
