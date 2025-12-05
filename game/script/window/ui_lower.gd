extends Control

@onready var player = get_tree().current_scene.get_node('Player')
@onready var player_deck = get_tree().current_scene.get_node('Player/Deck')
@onready var player_discarded = get_tree().current_scene.get_node('Player/Discarded')
@onready var text_level_gen = get_node('TextLevelGen')
@onready var text_energy = get_node('TextEnergy')
@onready var text_life = get_node('TextLife')
@onready var text_deck = get_node('TextDeck')
@onready var text_discarded = get_node('TextDiscarded')

func _process(delta):
    text_level_gen.text = 'Lv.%d' % [player.level_gen]
    text_energy.text = '%.1f/%.1f' % [player.energy, player.energy_max]
    text_life.text = '%d/%d' % [player.life, player.life_max]
    text_deck.text = str(player_deck.get_child_count())
    text_discarded.text = str(player_discarded.get_child_count())
