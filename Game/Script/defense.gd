extends Node2D

@onready var node_spawn = get_node('Field/Spawn')
@onready var rand = RandomNumberGenerator.new()

var wave = []
var time = 0

func _ready() -> void:
    wave = [[1, 1], [1.1, 1], [1.2, 1]]
    
func _process(delta: float) -> void:
    if GVar.menu == false and GVar.state == '':
        get_tree().paused = false
    else:
        get_tree().paused = true
    
    time += delta
    for wave_unit in wave:
        if time > wave_unit[0]:
            var index = rand.randi_range(0, 3)
            node_spawn.spawn_list[index].spawn_unit(wave_unit[1])
            wave.erase(wave_unit)
