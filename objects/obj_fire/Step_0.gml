/// @description Insert description here
// You can write your code in this editor
if global.paused{
	if !global.fire{
		image_alpha = 0
	}else{
		image_alpha = alphaFireSubtract
	}
}
scr_speedStep()

if !global.paused{
	if g > 0{
		r = 255
		g -= colSub*1.5
		b = 0
	}else if r > 1{
		r -= colSub*1.5
		g = 0
		b = 0
	}else{
		r = 0
		g = 0
		b = 0
	}
	alphaFireSubtract--
	
	scale += scaleAdd

	/*if speed > 0{
		speed-=spdSub
	}

	image_angle += angleAdd*/

	if image_alpha<0{instance_destroy()}

	/*if fireAdd>=480{
		fireAdd=0
	
		var f = instance_create_depth(x, y, 10, obj_fire)
		f.direction = direction + random_range(-10, 10)
		f.speed = speed
		f.r = r
		f.g = g
		f.b = b
		f.alphaFireSubtract = alphaFireSubtract
	
	}
	fireAdd++*/
	
	if !global.fire{
		image_alpha = 0
	}else{
		image_alpha = alphaFireSubtract/(255*2*1.5)
	}

	image_blend = make_color_rgb(r, g, b)


	image_xscale = scale
	image_yscale = scale

}
