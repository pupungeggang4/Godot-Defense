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
            GVar.state = 'battle'

func _on_item_gui_input(event: InputEvent, emitter_node) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            print(emitter_node.get_index())
