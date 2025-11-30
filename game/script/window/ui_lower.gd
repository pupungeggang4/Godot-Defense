extends Control

@onready var player = get_tree().current_scene.get_node('Player')
@onready var text_level = get_node('TextLevel')
@onready var text_energy = get_node('TextEnergy')

func _process(delta):
    text_level.text = 'Lv.%d' % [player.level]
    text_energy.text = '%.1f/%.1f' % [player.energy, player.energy_max]
