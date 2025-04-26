extends Node

@onready var node_unit_list = get_tree().current_scene.get_node('Field/Unit')

func _on_collide_area_area_entered(area: Area2D) -> void:
    var node_unit = area.get_parent()
    node_unit_list.remove_child(node_unit)
