extends Node2D

@export var belt: StaticBody2D
@export var speed: float = 100.0
var touching_belt: bool = true

func _physics_process(delta: float) -> void:
	if touching_belt:
		position.x -= speed * delta
