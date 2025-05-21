extends Node2D

func _ready() -> void:
    var levels = get_node('Levels')
    for i in range(3):
        for j in range(5):
            var node_rect = ColorRect.new()
            node_rect.size = Vector2(UI.level_select.element_size[0], UI.level_select.element_size[1])
            node_rect.position = Vector2(UI.level_select.element_start[0] + UI.level_select.element_interval[0] * j, UI.level_select.element_start[1] + UI.level_select.element_interval[1] * i)
            levels.add_child(node_rect)
            
func _process(delta: float) -> void:
    if Input.is_action_just_released('mouse_left'):
        var mouse = get_viewport().get_mouse_position()
        if Func.point_inside_rect_UI(mouse, UI.level_select.button_back):
            Func.change_scene(self, 'res://scene/title.tscn', 'Title')
            
        for i in range(3):
            for j in range(5):
                var temp_rect = [UI.level_select.element_start[0] + UI.level_select.element_interval[0] * j, UI.level_select.element_start[1] + UI.level_select.element_interval[1] * i, UI.level_select.element_size[0], UI.level_select.element_size[0]]
                if Func.point_inside_rect_UI(mouse, temp_rect):
                    Func.change_scene(self, 'res://scene/battle.tscn', 'Battle')
