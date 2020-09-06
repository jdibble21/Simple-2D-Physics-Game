extends RigidBody2D
export var strength : float = 500
export var angle: float = 1
var launchChecker = 0
var gameOver = 0

func _ready():
	$GameOver/LoseLabel.hide()
	$GameOver/WinLabel.hide()
	$GameOver/ReloadGameLabel.hide()
	
func _process(delta):
	var vector_one = get_node("HUD/AngleSlider").value
	strength = get_node("HUD/StrengthSlider").value
	var direction = Vector2(vector_one,-1).normalized()
	var velocity = direction * strength
	var true_angle = calculateAngle(velocity.x,velocity.y)
	get_node("HUD/AngleArrow").rotation_degrees = true_angle
	if Input.is_action_just_pressed("launch"):
		emit_signal("sleeping_state_changed")
		if launchChecker == 0:
			launchChecker = 1
			apply_impulse(Vector2.ZERO,velocity)
	if Input.is_action_just_pressed("reload_scene"):
		get_tree().reload_current_scene()
	if launchChecker == 1 and self.angular_velocity < -0.2:
		if(get_node("/root/Level/Target").hit_indicator == 1):
			$GameOver/ReloadGameLabel.show()
			$GameOver/WinLabel.show()
			
		if(get_node("/root/Level/Target").hit_indicator == 0):
			$GameOver/ReloadGameLabel.show()
			$GameOver/LoseLabel.show()
			
func _integrate_forces(state):
	set_scale(Vector2(-1, 1))
	
func _on_Player_sleeping_state_changed():
	if Input.is_action_just_pressed("launch"):
		$AnimatedSprite.play("moving")

func calculateAngle(x,y):
	if x == 0:
		x = 0.1
	var div_val = y/x
	var calculated_angle = atan(div_val)
	print(calculated_angle)
	if calculated_angle > -0.1:
		calculated_angle = 0.0
	return rad2deg(calculated_angle)
	
