extends Node2D

@export var laser_tscn: PackedScene

@export var PLAYER_X_MIN = 40.0
@export var PLAYER_X_MAX = 500.0

func _process(delta):
	# Position player according to mouse
	var mouse_pos = get_global_mouse_position()
	# We want position to be between 20 and 520
	var player_x_loc
	if mouse_pos.x < PLAYER_X_MIN:
		player_x_loc = PLAYER_X_MIN
	elif mouse_pos.x > PLAYER_X_MAX:
		player_x_loc = PLAYER_X_MAX
	else:
		player_x_loc = mouse_pos.x
	position.x = player_x_loc
	
	# Listen for player click
	if Input.is_action_just_pressed("fire"):
		var new_laser = laser_tscn.instantiate()
		new_laser.position = self.position
		add_sibling(new_laser)
		print("Laser spawned!")



func _on_area_entered(other_area: Area2D):
	if other_area.is_in_group("enemy"):
		self.queue_free()
