/// @description Insert description here
// You can write your code in this editor
image_alpha = 1
draw_self()

shader_set(sh_hurt)

rcolor = shader_get_uniform(sh_hurt, "rcolor")
gcolor = shader_get_uniform(sh_hurt, "gcolor")
bcolor = shader_get_uniform(sh_hurt, "bcolor")
/*if !global.shield{
	shader_set_uniform_f(rcolor, 1.0)
	shader_set_uniform_f(gcolor, 1.0-global.hurtColorAmount)
	shader_set_uniform_f(bcolor, 1.0-global.hurtColorAmount)
}else{
	shader_set_uniform_f(rcolor, 1.0-global.hurtColorAmount)
	shader_set_uniform_f(gcolor, 1.0-global.hurtColorAmount)
	shader_set_uniform_f(bcolor, 1.0)
}*/

if !global.shield{
	shader_set_uniform_f(rcolor, 1.0)
	shader_set_uniform_f(gcolor, 1.0-global.hurtColorAmount)
	shader_set_uniform_f(bcolor, 1.0-global.hurtColorAmount)
}else{
	shader_set_uniform_f(rcolor, 1.0-global.hurtColorAmount)
	shader_set_uniform_f(gcolor, 1.0-global.hurtColorAmount)
	shader_set_uniform_f(bcolor, 1.0)
}

image_alpha = global.hurtColorAmount
draw_self()

shader_reset()

/*if !global.powerShield{
	var shaderUsage = sh_hurtRed
}else{
	var shaderUsage = sh_hurtBlue
}

shader_set(shaderUsage)

image_alpha = 1

uni_hurtAmount = shader_get_uniform(shaderUsage, "hurtAmount")
shader_set_uniform_f(uni_hurtAmount, global.hurtColorAmount)

draw_self()

shader_reset()
*/
//image_alpha = 1-global.hurtColorAmount
//draw_self()