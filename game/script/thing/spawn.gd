extends Node2D

var start = Vector2(760, 40)
var interval = Vector2(0, 80)

func _ready() -> void:
    for i in range(4):
        var spawn = Preloaded.spawn.instantiate()
        spawn.position = start + interval * i
        add_child(spawn)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
