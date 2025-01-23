/// @description Insert description here
// You can write your code in this editor

surface_set_target(surface)
	var bg_id =	layer_background_get_id("Background")
	var blur
	if global.m_blur{
		switch(global.m_blur_strength){
			case 0:
				blur = 0.5
			break;
			case 1:
				blur = 0.25
			break;
			case 2:
				blur = 0.1
			break;
		}
	}else{
		blur = 1
	}
	
	layer_background_alpha(bg_id, blur)
	
	draw_surface(application_surface, 0, 0)
surface_reset_target()

if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_rshift){
	global.paused = true
}
/*surface_set_target(surface)
if global.shader{
	
	shader_set(sh_cromathicAberration)
	shader_set_uniform_f(uni_dist, dist/1.5)
	
	//var bg_id =	layer_background_get_id("Background")
	//layer_background_alpha(bg_id, 0.25)
	//draw_surface(application_surface, 0, 0)
	//layer_background_alpha(bg_id, 1)
	//shader_set_uniform_f(uni_shade, shade)
	//shader_set_uniform_f(obj_shaderController.uni_dist, obj_shaderController.dist)
	
	scr_drawUI()
	
	shader_reset()
}else{
	//draw_surface(application_surface, 0, 0)
	scr_drawUI()
}
surface_reset_target()*/
//draw_rectangle_color(0, 0, room_width, room_height, make_color_rgb(17, 12, 46), make_color_rgb(24, 17, 60), make_color_rgb(23, 23, 74), make_color_rgb(21, 27, 88), 0)
//draw_rectangle_color(0, 0, room_width, room_height, c_red, c_blue, c_green, c_yellow, 0)
if global.shader{
	shader_set(sh_test)
	//shader_set(sh_perspective)
	//shader_set(sh_cromathicAberration)
	shader_set_uniform_f(uni_dist, dist/1.5)
	
	draw_surface(surface, 0, 0)
	scr_drawUI()
	
	draw_set_color(c_white)
	draw_set_alpha(255)
	draw_line(0, 50, room_width, 50)
	draw_line(0, 300, room_width, 300)
	draw_line(0, 450, room_width, 450)
	
	shader_reset()
	
}else{
	draw_surface(surface, 0, 0)
	scr_drawUI()
}