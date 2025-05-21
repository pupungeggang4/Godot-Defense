extends Node

const empty_save_data = {
    'card': {},
    'equipment': {},
    'level': {
        1: [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        2: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        3: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        4: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        5: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        6: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        7: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    },
}
var data = {}

func _ready() -> void:
    load_data()

func save_data() -> void:
    var f = FileAccess.open('user://defense_save.txt', FileAccess.WRITE)
    f.store_string(JSON.stringify(data))
    f.close()
    
func load_data() -> void:
    var f = FileAccess.open('user://defense_save.txt', FileAccess.READ)
    if !f:
        reset_data()
        f = FileAccess.open('user://defense_save.txt', FileAccess.READ)

    data = JSON.parse_string(f.get_as_text())
    f.close()

func reset_data() -> void:
    var f = FileAccess.open('user://defense_save.txt', FileAccess.WRITE)
    f.store_string(JSON.stringify(empty_save_data))
    f.close()
