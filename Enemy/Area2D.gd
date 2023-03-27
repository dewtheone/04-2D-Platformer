extends Area2D

var damage = 1000



func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.do_damage(damage)
