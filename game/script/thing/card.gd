extends Node2D

@onready var hand = get_tree().current_scene.get_node('Player/Hand')

func _ready():
    position.y = 580
    
func _process(delta):
    if hand != null:
        var index = get_index()
        position.x = 160 + 120 * index
        
