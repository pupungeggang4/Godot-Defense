extends Node2D

var pos_end = [200, 280]

func _ready() -> void:
    for i in range(4):
        var node_temp_end = load('res://Scene/Thing/end_point.tscn').instantiate()
        node_temp_end.position = Vector2(pos_end[0], pos_end[1] + 80 * i)
        add_child(node_temp_end)
    
func _process(delta: float) -> void:
    pass
