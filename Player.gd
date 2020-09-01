extends RigidBody2D
export var strength : float = 500
export var angle: float = 0

func _process(delta):
	
	if Input.is_action_just_pressed("launch"):
		emit_signal("sleeping_state_changed")
		print("FROM angleslider node")
		print(get_node("HUD/AngleSlider").value)
		var vector_one = get_node("HUD/AngleSlider").value
		print(vector_one)
		var direction = Vector2(vector_one,-1).normalized()		
		var velocity = direction * strength
		apply_impulse(Vector2.ZERO,velocity)
		
func _integrate_forces(state):
	set_scale(Vector2(-1, 1))
	

func _on_Player_sleeping_state_changed():
	if Input.is_action_just_pressed("launch"):
		$AnimatedSprite.play("moving")

