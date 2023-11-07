extends Node

var score = 0

func inc_score(value):
	self.score += value
	self.emit_signal("score_changed")
