/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_nave){
	instance_destroy()
	//global.powerRound++
}

motion_set(point_direction(x, y, obj_nave.x, obj_nave.y), 2)

col += 5
image_blend = make_color_rgb(col, col, col)

if col >= 255{col = 255/2}