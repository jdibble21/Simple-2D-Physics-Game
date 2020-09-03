extends RigidBody2D
export var strength : float = 500
export var angle: float = 0

func _process(delta):
	if Input.is_action_just_pressed("launch"):
		emit_signal("sleeping_state_changed")
		strength = get_node("HUD/StrengthSlider").value
		var vector_one = get_node("HUD/AngleSlider").value
		print("vector one: " + str(vector_one))
		print("strength: " + str(strength))
		var direction = Vector2(vector_one,-1).normalized()
		var velocity = direction * strength
		print("velocity: " + str(velocity))
		calculateAngle(velocity.x,velocity.y)
		apply_impulse(Vector2.ZERO,velocity)
	if Input.is_action_just_pressed("reload_scene"):
		get_tree().reload_current_scene()
		
func _integrate_forces(state):
	set_scale(Vector2(-1, 1))
	
func _on_Player_sleeping_state_changed():
	if Input.is_action_just_pressed("launch"):
		$AnimatedSprite.play("moving")

func calculateAngle(x,y):
	var div_val = y/x
	print("pre calc div value: " + str(div_val))
	var calculated_angle = atan(div_val)
	print("calculated result: " + str(rad2deg(calculated_angle)))
	
