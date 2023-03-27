extends Control


func _ready():
	pass


func _on_Play_again_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Levels/Level1.tscn")
	Global.lives = 5
	Global.level = 1
	Global.score = 0


func _on_Quit_pressed():
# warning-ignore:standalone_expression
	get_tree().quit()



