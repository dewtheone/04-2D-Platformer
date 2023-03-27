extends Node

var score = 0
var lives = 5
var health = 1
var max_health = 1
var level = 1

func increase_score(s):
	score += s


func decrease_health(h):
	health -= h
	
func decrease_lives(l):
	lives -= l
	health = max_health
	if lives <= 0:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Levels/Game Over.tscn")
		lives = 5
		score = 0
		level = 1
