extends Node2D

@export var enemy_tscn: PackedScene
var ENEMY_SPAWN_HEIGHT = -50

# Spawn new enemy every 1 second
func spawn_enemy_ship():
	print("Enemy ship spawned!")
	var new_enemy_ship = enemy_tscn.instantiate()
	new_enemy_ship.position.y = ENEMY_SPAWN_HEIGHT
	var viewport_width = get_viewport_rect().size.x
	var rand_x = randf_range(0, viewport_width)
	new_enemy_ship.position.x = rand_x
	self.add_child(new_enemy_ship)
	print("Enemy spawned!")
