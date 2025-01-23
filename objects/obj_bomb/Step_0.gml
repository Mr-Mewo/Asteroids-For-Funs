/// @description Insert description here
// You can write your code in this editor

if global.paused{
	speed = 0
}else{
	speed -= 0.1/global.rFps
}
if speed <= 0 and !global.paused{
	for (var b = image_angle; b <= 360+image_angle; b += 10){
		scr_shoot(b)
		scr_sound(snd_BombExplode, 1, 0)
		instance_destroy()
	}
	global.shakePower = 10
}

var f = instance_create_depth(x, y, 10, obj_fire)
f.direction = direction + random_range(-20, 20) - 180