extends Node2D

@onready var field = get_node('..')

var start = Vector2(40, 40)
var interval = Vector2(0, 80)

func _ready() -> void:
    for i in range(4):
        var end = Preloaded.end.instantiate()
        end.position = start + interval * i
        add_child(end)
        field.tile_layout[i][0] = end
    
func _process(delta: float) -> void:
    pass
