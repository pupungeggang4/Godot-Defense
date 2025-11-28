extends TileMapLayer

func _ready() -> void:
    pass
    
func _input(event):
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            var mouse = to_local(get_global_mouse_position())
            var clicked_cell = local_to_map(mouse)
