extends CanvasLayer

var angle

func _on_AngleSlider_value_changed(value):
	angle = value
	#$AngleArrow.rotation_degrees = 90
	if value == 0:
		$AngleArrow.rotation_degrees = -90
	if value == 1:
		$AngleArrow.rotation_degrees = -84
	if value == 2:
		$AngleArrow.rotation_degrees = -78
	if value == 3:
		$AngleArrow.rotation_degrees = -72
	if value == 4:
		$AngleArrow.rotation_degrees = -66
	if value == 5:
		$AngleArrow.rotation_degrees = -60
	if value == 6:
		$AngleArrow.rotation_degrees = -54
	if value == 7:
		$AngleArrow.rotation_degrees = -48
	if value == 8:
		$AngleArrow.rotation_degrees = -42
	if value == 9:
		$AngleArrow.rotation_degrees = -36
	if value == 10:
		$AngleArrow.rotation_degrees = -30
	if value == 11:
		$AngleArrow.rotation_degrees = -24
	if value == 12:
		$AngleArrow.rotation_degrees = -18
	if value == 13:
		$AngleArrow.rotation_degrees = -12
	if value == 14:
		$AngleArrow.rotation_degrees = -6
	if value == 15:
		$AngleArrow.rotation_degrees = 0

#1.5708
