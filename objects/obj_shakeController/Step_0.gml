/// @description Insert description here
// You can write your code in this editor

if global.shake{
	if global.paused{
		global.shakePower = 0
	}
	shakePower = global.shakePower
	
	if global.shakePower > 0.5{
		global.shakePower -= 0.05
	}else{
		global.shakePower = 0.5
		camera_set_view_pos(view_camera[0], 0, 0)
	}

	xx = random_range(-shakePower, shakePower) 
	yy = random_range(-shakePower, shakePower)
	camera_set_view_pos(view_camera[0], xx, yy)
}else{
	if global.paused{
		global.shakePower = 0
	}
	shakePower = 0

	xx = 0 
	yy = 0
	camera_set_view_pos(view_camera[0], xx, yy)
}