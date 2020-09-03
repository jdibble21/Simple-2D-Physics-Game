extends CanvasLayer

var angle

func _on_AngleSlider_value_changed(value):
	angle = value
	#$AngleArrow.rotation_degrees = 90
	if value == 0:
		$AngleArrow.rotation_degrees = -90
	if value == 0.25:
		$AngleArrow.rotation_degrees = -86.25
	if value == 0.5:
		$AngleArrow.rotation_degrees = -82.5
	if value == 0.75:
		$AngleArrow.rotation_degrees = -78.75
	if value == 1:
		$AngleArrow.rotation_degrees = -75
	if value == 1.25:
		$AngleArrow.rotation_degrees = -71.25
	if value == 1.50:
		$AngleArrow.rotation_degrees = -67.5
	if value == 1.75:
		$AngleArrow.rotation_degrees = -63.75
	if value == 2:
		$AngleArrow.rotation_degrees = -60
	if value == 2.25:
		$AngleArrow.rotation_degrees = -56.25
	if value == 2.50:
		$AngleArrow.rotation_degrees = -52.5
	if value == 2.75:
		$AngleArrow.rotation_degrees = -48.75
	if value == 3:
		$AngleArrow.rotation_degrees = -45
	if value == 3.25:
		$AngleArrow.rotation_degrees = -41.25
	if value == 3.50:
		$AngleArrow.rotation_degrees = -37.5
	if value == 3.75:
		$AngleArrow.rotation_degrees = -33.75
	if value == 4:
		$AngleArrow.rotation_degrees = -30
	if value == 4.25:
		$AngleArrow.rotation_degrees = -26.25
	if value == 4.50:
		$AngleArrow.rotation_degrees = -22.5
	if value == 4.75:
		$AngleArrow.rotation_degrees = -18.75
	if value == 5:
		$AngleArrow.rotation_degrees = -15
	if value == 5.25:
		$AngleArrow.rotation_degrees = -11.25
	if value == 5.50:
		$AngleArrow.rotation_degrees = -7.5
	if value == 5.75:
		$AngleArrow.rotation_degrees = -3.75
	if value == 6:
		$AngleArrow.rotation_degrees = 0
	if value == 6.25:
		$AngleArrow.rotation_degrees = 0
	if value == 6.50:
		$AngleArrow.rotation_degrees = 0
#1.5708
