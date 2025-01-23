/// @description Insert description here
// You can write your code in this editor

if global.paused{
	speed = 0
	exit
}
//	keyboard_check
var forward = keyboard_check(vk_up) or keyboard_check(ord("W"))
//var back = keyboard_check(vk_down) or keyboard_check(ord("S"))
var left = keyboard_check(vk_left) or keyboard_check(ord("A"))
var right = keyboard_check(vk_right) or keyboard_check(ord("D"))

//	move

if forward{
	motion_add(goto_dir, 0.1)
	if createParticula >= 3{
		instance_create_depth(x, y, 1, obj_particulaNave)
		createParticula = 0
	}
	createParticula++
	
}/*else if back{
	motion_add(image_angle, -0.05)
	if createParticula >= 3{
		instance_create_depth(x, y, 1, obj_particulaNave)
		createParticula = 0
	}
	createParticula++
}*/else{
	if speed>0{
		speed -= 0.005
	}else{
		speed = 0
	}
}

goto_dir += (left-right)*5
image_angle = lerp(image_angle, goto_dir, 0.15)


if keyboard_check_pressed(vk_space){
	motion_add(goto_dir, - 0.1)
	
	scr_sound(snd_shot4/*shotSounds[int64(random(5))]*/, 1, 0)
	
	//scr_shoot(0)
	scr_shotPlus()
	
	if global.shotDelay == 0{
		alarm[0] = 0.50*60
	}else if global.shotDelay == 1{
		alarm[0] = 0.20*60
	}else{
		alarm[0] = 0.10*60
	}
	/*var bullet = instance_create_depth(x, y, 1, obj_shotNave)
	//bullet.direction = b
	bullet.speed = 10
	bullet.direction = obj_nave.image_angle
	bullet.image_angle = bullet.direction

	bullet.x += + lengthdir_x(16, bullet.direction);
	bullet.y += + lengthdir_y(16, bullet.direction);*/
	
}

if keyboard_check_pressed(ord("Z")) and global.powerRound>0{
	for (var b = image_angle; b <= 360+image_angle; b += 2){
		scr_shoot(b)
	}
	scr_sound(snd_shotRound, 1, 0)
	global.subPowerRound++
}

if keyboard_check_pressed(ord("X")) and global.powerBomb>0{
	for (var b = image_angle; b <= 360+image_angle; b += 45){
		scr_shootBomb(b)
	}
	scr_sound(snd_BombInit, 1, 0)
	global.subPowerBomb++
}

if keyboard_check_pressed(ord("C")) and global.powerShield>0 and !global.shield{
	global.shield = true
	
	scr_sound(snd_BombInit, 1, 0)
	global.subPowerShield++
}
image_index = global.shield


if global.life <= 0/* and !global.imortal*/{
	if global.particles{
		/*for(var p = 0; p <= 500; p++){
			instance_create_depth(x, y, 3, obj_particulaNaveExplosion)
		}*/
		//part_particles_create(global.particle_system, x, y, global.particle_player, 500)
		part_particles_create(global.particle_system, x, y, global.particle_playerA, 166)
		part_particles_create(global.particle_system, x, y, global.particle_playerB, 166)
		part_particles_create(global.particle_system, x, y, global.particle_playerC, 166)
	}
	scr_sound(snd_lose, 1, 0)
	scr_sound(snd_BombExplode, 1, 0)
	instance_destroy()
	
}

var speedColor = 0
if speed > 10{
	speedColor = (speed-10)/20
	if speed > 20{
		global.shakePower = speedColor*10
		if speed > 40 {
			global.life = 0
			global.overHeating = true
		}
	}
}else{
	speedColor = 0
}

if global.hurtColorAmount > speedColor {
	global.hurtColorAmount -= 0.05
}else{
	global.hurtColorAmount = speedColor
}

global.distanciaPercorrida += (speed*56000/3.6)/299792458

move_wrap(1, 1, 0)
