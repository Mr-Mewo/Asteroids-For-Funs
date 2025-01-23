/// @description Insert description here
// You can write your code in this editor

var spritesBig = [spr_asteroidBig0, spr_asteroidBig1, spr_asteroidBig2]
var spritesMed = [spr_asteroidMed0, spr_asteroidMed1, spr_asteroidMed2]
var spritesLow = [spr_asteroidLow0, spr_asteroidLow1, spr_asteroidLow2]

var name = object_get_name(object_index)
switch name{
	case "obj_asteroidBig":
		sprite_index = spritesBig[random(3)]
	break;
	case "obj_asteroidMed":
		sprite_index = spritesMed[random(3)]
	break;
	case "obj_asteroidLow":
		sprite_index = spritesLow[random(3)]
	break;
}

angleAdd = random_range(-5, 5)

global.asteroidCount++

//x = random(room_width)
//y = random(room_height)
generateParticles = true
var range = 50
if instance_exists(obj_nave){
	if x>obj_nave.x-range and x<obj_nave.x+range and y>obj_nave.y-range and y<obj_nave.y+range{
		generateParticles = false
		instance_destroy()
	}
}

//direction = random(360)
image_angle = random(360)

var multiplySpeed = 2
switch(global.difficult){
	case 0:
		motion_set(random(360), random_range(0.25 /multiplySpeed, 1 /multiplySpeed))
		//speed = random_range(0.25, 1)
	break;
	case 1:
		motion_set(random(360), random_range(0.25, 1))
		//speed = random_range(0.25, 1)
	break;
	case 2:
		motion_set(random(360), random_range(0.25 *multiplySpeed, 1 *multiplySpeed))
		//speed = random_range(0.25, 1)
	break;
}
scr_speedCreate()