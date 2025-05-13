extends Node

func point_inside_rect_UI(point: Vector2, rect: Array) -> bool:
    return point.x > rect[0] and point.x < rect[0] + rect[2] and point.y > rect[1] and point.y < rect[1] + rect[3]

func change_scene(current: Node, scene_path: String, scene_name: String) -> void:
    var scene = load(scene_path).instantiate()
    scene.name = scene_name
    get_tree().root.remove_child(current)
    get_tree().root.add_child(scene)
