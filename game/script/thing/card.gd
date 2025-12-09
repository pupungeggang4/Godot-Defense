extends Node2D

@export var id = 0
@export var card_name = ''
@export var element = ''
@export var energy = 0
@export var stat = [5, 1, 10]
@export var weapon = 1
@export var effect = []
@onready var text_energy = get_node('TextEnergy')

func _ready():
    pass
    
func set_data(ID):
    var data = Data.card[ID].duplicate(true)
    id = data["id"]
    card_name = data["name"]
    energy = data["energy"]
    stat = data["stat"]
    weapon = data["weapon"]
    effect = data["effect"]
    
func clone():
    var card = load('res://scene/thing/card.tscn').instantiate()
    card.id = id
    card.card_name = card_name
    card.energy = energy
    card.stat = stat.duplicate(true)
    card.weapon = weapon
    card.effect = effect
    return card
    
func _process(delta):
    text_energy.text = str(energy)
