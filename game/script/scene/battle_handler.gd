extends Node

func _ready():
    pass
    
func _process(delta):
    handle_mouse()
    
func handle_mouse():
    pass

func _on_button_menu_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            if GVar.menu == false:
                GVar.menu = true
            else:
                GVar.menu = false
