/// @description Insert description here
// You can write your code in this editor

scr_speedStep()

if !global.paused{
	image_alpha -= 0.01
	if image_alpha <= 0 or scale <= 0{instance_destroy()}
	
	if scale >= 0{
		scale -=0.025
	}
	image_xscale = scale
	image_yscale = scale
}

/*if g > 0{
	r = 255
	g -= colSub
	b = 0
}else if r > 1{
	r -= colSub
	g = 0
	b = 0
}else{
	r = 0
	g = 0
	b = 0
}
//alphaFireSubtract--

//image_alpha = alphaFireSubtract/(255*2)
image_blend = make_color_rgb(r, g, b)*/
//image_blend = c_teal