extends Node2D

var blah: Area2D
@export var speed = 800.0 # pixels per second

func _process(delta):
	
	position.y -= speed * delta

func _on_area_entered(other_area: Area2D):
	if other_area.is_in_group("enemy"):
		self.queue_free() # destroy laser
