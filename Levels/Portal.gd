extends Area2D


func _ready():
	pass


func _on_Portal_entered(body):
	if body.name == "Player":
		if name == "Portal_to_2":
			Global.level = 2
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://Levels/Level2.tscn")
		if name == "Portal_to_3":
			Global.level = 3
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://Levels/Level3.tscn")
		if name == "Portal_to_end":
			Global.level = 4
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://Levels/Game Over.tscn")
