extends KinematicBody2D

export var speed = .5
export var damage = 1
var direction = 1
var velocity = Vector2.ZERO


func _physics_process(_delta):
	if direction < 0:
		$Sprite.flip_h = true
	if direction > 0:
		$Sprite.flip_h = false
	velocity.x += direction * speed
	# warning-ignore:return_value_discarded
	move_and_slide_with_snap(velocity, Vector2.UP)




func _on_Area2D_body_entered(body):
	if body.name == "Ground_Invis":
		velocity.x = 0
		direction *= -1
	if body.name == "Player":
		body.do_damage(damage)
	print("Collided with: ", body.name)
