extends Node2D

@onready var node_unit_list = get_tree().current_scene.get_node('Field/Unit')

func spawn_unit(unit):
    var node_unit = load('res://Scene/Thing/unit.tscn').instantiate()
    node_unit.side = 1
    node_unit.position.x = position.x
    node_unit.position.y = position.y
    node_unit_list.add_child(node_unit)
