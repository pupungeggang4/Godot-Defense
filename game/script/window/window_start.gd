extends Control

func _ready():
    for i in range(3):
        var node = get_node('ItemList/Item' + str(i))
        node.gui_input.connect(_on_item_gui_input.bind(node))

func _process(delta):
    if GVar.state == 'start':
        show()
    else:
        hide()

func _on_button_start_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            if GVar.selected_start != -1:
                GVar.state = 'battle'
                var player = get_tree().current_scene.get_node('Player')
                var adventure = get_tree().current_scene.get_node('Adventure')
                player.adventure_start(adventure.reward[GVar.selected_start])
                player.battle_start()

func _on_item_gui_input(event: InputEvent, emitter_node) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            GVar.selected_start = emitter_node.get_index()
