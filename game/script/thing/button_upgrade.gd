extends Node2D

@onready var player = get_node('..')
@onready var text_upgrade = get_node('TextUpgrade')

func _process(delta):
    text_upgrade.text = str(player.energy_upgrade)

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
    if GVar.menu == false:
        if GVar.state == 'battle':
            if event is InputEventMouseButton:
                if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
                    player.upgrade()
