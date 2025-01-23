/// @description Insert description here
// You can write your code in this editor   

if keyboard_check_pressed(ord("F")){
	if window_get_fullscreen(){
		window_set_fullscreen(false)
	}else{
		window_set_fullscreen(true)
	}
}

if global.asteroidCount == 0{
	if global.difficult == 0{
		dificuldade += 2
	}else if global.difficult == 1{
		dificuldade += 5
	}else{
		dificuldade += 10
	}
	global.nivel++
	global.shot+=1
	if !global.imortal{
		global.addLife++
	}
	for (c = 0; c < dificuldade; c++){
		instance_create_depth(random(room_width), random(room_height), 2, obj_asteroidBig)
	}
}

/*if global.nivel==2 and !instance_exists(obj_planet){
	instance_create_depth(0, 0, 9, obj_planet)
}*/

if global.addLife >= 2 and !global.imortal{
	global.addLife = global.addLife-2
	global.life++
}

if global.life and once == 0{
	once = false
	background_color = c_red
}

if keyboard_check_pressed(ord("R")){
	room_restart()
}

/*if keyboard_check_pressed(vk_escape){
	game_end()
}*/