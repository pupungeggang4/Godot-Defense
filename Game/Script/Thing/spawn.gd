extends Node2D

var pos_start = [1080, 280]
var spawn_list = []

func _ready() -> void:
    for i in range(4):
        var node_temp_spawn = load('res://Scene/Thing/spawn_point.tscn').instantiate()
        node_temp_spawn.position = Vector2(pos_start[0], pos_start[1] + 80 * i)
        add_child(node_temp_spawn)
        spawn_list.append(node_temp_spawn)
    
func _process(delta: float) -> void:
    pass
