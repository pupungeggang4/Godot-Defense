extends Node

const empty_save_data = {"1": [1, 2, 3]}
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
    print(data)
    f.close()

func reset_data() -> void:
    var f = FileAccess.open('user://defense_save.txt', FileAccess.WRITE)
    f.store_string(JSON.stringify(empty_save_data))
    f.close()
