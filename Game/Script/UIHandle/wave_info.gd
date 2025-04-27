extends Node2D

@onready var node_progress_cursor = get_node("ProgressCursor")

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    if node_progress_cursor.position.x < 820:
        node_progress_cursor.position.x += 20 * delta
