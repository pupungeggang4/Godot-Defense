extends Node2D

var start = Vector2(40, 40)
var interval = Vector2(0, 80)

func _ready() -> void:
    for i in range(4):
        var end = Preloaded.end.instantiate()
        end.position = start + interval * i
        add_child(end)
    
func _process(delta: float) -> void:
    pass
