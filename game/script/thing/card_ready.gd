extends Node2D

@onready var sprite = get_node('Sprite')
var lifetime_max = 4.0
var lifetime = 4.0

func _process(delta):
    if lifetime < 0:
        queue_free()
    else:
        lifetime -= delta
        print(lifetime)
    sprite.region_rect.size.x = 120.0 * lifetime / lifetime_max
