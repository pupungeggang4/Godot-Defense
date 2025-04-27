extends Node2D

@export var life = 20
@export var level = 1
@export var energy = 4
@export var energy_max = 8
@export var energy_gen = 0
@export var click_state = ''

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_PAUSABLE
    
func _process(delta: float) -> void:
    generate_energy(delta)
    handle_mouse()
    
func generate_energy(delta: float) -> void:
    energy += (1 + level * 0.2 + energy_gen) * delta
    if energy > energy_max:
        energy = energy_max

func handle_mouse():
    if Input.is_action_just_released('mouse_left'):
        var mouse = get_viewport().get_mouse_position()
        if F.point_inside_rect_ui(mouse, UI.defense.button_menu):
            GVar.menu = true
            print(1)
        if GVar.state == '':
            if click_state == '':
                if F.point_inside_rect_ui(mouse, UI.defense.button_upgrade):
                    if level < 5:
                        level += 1
                        energy_max += 2
