/// @description Insert description here
// You can write your code in this editor

scale+=0.05
image_xscale = scale
image_yscale = scale


alpha -= 0.05
image_alpha = alpha

if alpha  < 0 {
	instance_destroy()
	alpha = 0
}