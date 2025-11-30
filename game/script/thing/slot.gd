extends Node2D

@export var card: Node2D
@onready var deck = get_tree().current_scene.get_node('Player/Deck')
@onready var sprite_reload = get_node('SpriteReload')

var loaded = false
var reload_time_max = 4.0
var reload_time = 0.0

func _ready():
    position.y = 580
    
func _process(delta):
    position.x = 160 + 120 * get_index()
    if loaded == false:
        if reload_time > 0:
            reload_time -= delta
        else:
            if deck.get_child_count() > 0:
                var top = deck.get_child(0)
                deck.remove_child(top)
                add_child(top)
                card = top
                loaded = true
    else:
        if 0:
            remove_child(card)
            deck.add_child(card)
            card = null
            loaded = false
            reload_time = reload_time_max
    sprite_reload.region_rect.size.x = 120.0 * reload_time / reload_time_max
