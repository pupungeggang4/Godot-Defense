extends Node

@onready var node_player = get_tree().current_scene.get_node('Player')
@onready var node_unit_list = get_tree().current_scene.get_node('Field/Unit')

func _on_collide_area_area_entered(area: Area2D) -> void:
    var node_unit = area.get_parent()
    if node_unit.get_parent() == node_unit_list:
        if node_unit.side == 1:
            node_unit_list.remove_child(node_unit)
            node_player.life -= 1
