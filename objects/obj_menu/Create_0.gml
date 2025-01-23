/// @description Insert description here
// You can write your code in this editor



surface = surface_create(window_get_width(), window_get_height())

global.paused = true

menuSet = 0 //0=menu 1=options 2=tutorial

pauseSelected = 0
maxselect = 3

info = false

textAlpha = 1

global.fireCount = 0

for (s = 0; s < 2000; s++){
	instance_create_depth(random(room_width), random(room_height), 10, obj_star0)
}
/*
global.sound = true
global.shake = true
global.shader = true
global.particles = true

global.wrap = false
global.imortal = false
global.invencB = false
global.plusB = true
*/
scr_createOptionsText()
scr_readOptionsText()

instance_create_depth(0, 0, -1, obj_shakeController)
