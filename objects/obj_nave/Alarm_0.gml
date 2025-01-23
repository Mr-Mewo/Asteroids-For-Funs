/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_space){
	motion_add(image_angle, - 0.1)
	
	scr_sound(snd_shot4/*shotSounds[int64(random(5))]*/, 1, 0)
	
	//scr_shoot(0)
	scr_shotPlus()
	
	if global.shotDelay == 0{
		alarm[0] = 0.40*60
	}else if global.shotDelay == 1{
		alarm[0] = 0.20*60
	}else{
		alarm[0] = 0.10*60
	}
	
}