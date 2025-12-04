extends Node2D

func _process(delta):
    pass

func _on_button_start_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            get_tree().change_scene_to_file('res://scene/battle.tscn')
            GVar.state = 'start'

func _on_button_exit_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            get_tree().quit()
