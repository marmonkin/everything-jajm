extends Node2D

var spawntimer = 120
@onready var timer: Timer = $Timer

@export var vertical_offset: float = 100.0
@export var bullet_3: PackedScene

func spawnB() -> void:
	var b_instance = bullet_3.instantiate()
	var offset_y = randf_range(-vertical_offset, vertical_offset)
	b_instance.global_position = global_position + Vector2(0, offset_y)
	get_tree().root.add_child(b_instance)

func _on_timer_timeout() -> void:
	spawnB()
	timer.wait_time = randf_range(1,10)
	pass
