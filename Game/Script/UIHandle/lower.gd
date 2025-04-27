extends Node2D

@onready var node_player = get_tree().current_scene.get_node('Player')
@onready var node_text_level = get_node('TextLevel')
@onready var node_text_life = get_node('TextLife')
@onready var node_text_energy = get_node('TextEnergy')

func _process(delta: float) -> void:
    node_text_level.text = 'Lv.%d' % [node_player.level]
    node_text_life.text = str(node_player.life)
    node_text_energy.text = '%.1f/%d' % [node_player.energy, node_player.energy_max]
