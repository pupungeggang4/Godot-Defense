extends TileMapLayer

func _ready() -> void:
    pass
    
func _input(event):
    if event is InputEventMouseButton:
        print(1)
