extends Control

func _process(delta):
    if GVar.menu == true:
        show()
    else:
        hide()

func _on_button_resume_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            GVar.menu = false

func _on_button_exit_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            GVar.menu = false
            get_tree().change_scene_to_file('res://scene/title.tscn')

func _on_button_quit_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            get_tree().quit()
