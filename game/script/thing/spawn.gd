extends Node2D

@onready var field = get_node('..')

var start = Vector2(760, 40)
var interval = Vector2(0, 80)

func _ready() -> void:
    for i in range(4):
        var spawn = Preloaded.spawn.instantiate()
        spawn.position = start + interval * i
        add_child(spawn)
        field.tile_layout[i][9] = spawn

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
