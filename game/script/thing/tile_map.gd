extends TileMapLayer

func _ready() -> void:
    pass
    
func _input(event):
    if event is InputEventMouseButton:
        if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            var pos = get_viewport().get_mouse_position()
            print(local_to_map(to_local(pos)))
