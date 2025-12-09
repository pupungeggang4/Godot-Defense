extends Node

var place = 'plains'
var reward = []

func _ready():
    var deck_start_selection = Data.deck.keys()
    for i in range(3):
        var index = randi_range(0, len(deck_start_selection) - 1)
        reward.push_back(deck_start_selection.pop_at(index))
