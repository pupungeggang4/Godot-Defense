extends Node2D

func _ready() -> void:
    load_page()
    
func load_page() -> void:
    var levels = get_node('Levels')
    for i in range(3):
        for j in range(5):
            var node_button = load('res://scene/Thing/level_button.tscn').instantiate()
            node_button.get_node('TextNum').text = str(i * 5 + j + 1)
            var page = str(GVar.level_select_page)
            if int(Save.data['level'][page][i * 5 + j]) != 0:
                node_button.get_node('Locked').hide()
            node_button.position = Vector2(UI.level_select.element_start[0] + UI.level_select.element_interval[0] * j, UI.level_select.element_start[1] + UI.level_select.element_interval[1] * i)
            levels.add_child(node_button)
            
func _process(delta: float) -> void:
    if Input.is_action_just_released('mouse_left'):
        var mouse = get_viewport().get_mouse_position()
        if Func.point_inside_rect_UI(mouse, UI.level_select.button_back):
            Func.change_scene(self, 'res://scene/title.tscn', 'Title')
            
        for i in range(3):
            for j in range(5):
                var temp_rect = [UI.level_select.element_start[0] + UI.level_select.element_interval[0] * j, UI.level_select.element_start[1] + UI.level_select.element_interval[1] * i, UI.level_select.element_size[0], UI.level_select.element_size[0]]
                if Func.point_inside_rect_UI(mouse, temp_rect):
                    var page = str(GVar.level_select_page)
                    if int(Save.data['level'][page][i * 5 + j]) == 1:
                        Func.change_scene(self, 'res://scene/battle.tscn', 'Battle')
