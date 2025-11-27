extends Node2D

func _process(delta):
    handle_mouse()
    
func handle_mouse():
    if Input.is_action_just_pressed('mouse_left'):
        var mouse = get_viewport().get_mouse_position()
        if Func.point_inside_rect_ui(mouse, UI.button_start):
            get_tree().change_scene_to_file('res://scene/battle.tscn')
        elif Func.point_inside_rect_ui(mouse, UI.button_quit):
            get_tree().quit()
