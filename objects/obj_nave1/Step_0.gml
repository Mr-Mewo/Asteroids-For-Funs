/// @description Insert description here
// You can write your code in this editor

if global.paused{
	speed = 0
	exit
}
if instance_exists(obj_asteroidBig){
	image_angle = point_direction(x, y, obj_asteroidBig.x, obj_asteroidBig.y)
}
//motion_add(image_angle, 0.1)
//scr_shoot(random(360))
move_wrap(1, 1, 0)
