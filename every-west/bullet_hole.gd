extends Node2D

@onready var bulit: Sprite2D = $Bulit
@onready var outline: Sprite2D = $Outline

var current_shooter: bool = false


func _ready() -> void:
	bulit.visible = false


func _process(delta: float) -> void:
	outline.visible = current_shooter


func put_bullet():
	bulit.visible = true
