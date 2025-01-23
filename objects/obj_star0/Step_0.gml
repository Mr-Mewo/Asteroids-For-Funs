/// @description Insert description here
// You can write your code in this editor



if global.paused{
	speed = 0
	exit
}else{
	speed = spd
}

if x > room_width{
	
	spd = random_range(0.25, 1.25)/2
	speed = spd
	
	var scale = speed				*2
	image_xscale = scale
	image_yscale = scale
	
	x = 0
	y = random(room_height)

}
