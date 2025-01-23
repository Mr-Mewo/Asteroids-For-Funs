/// @description Insert description here
// You can write your code in this editor

global.rFps = fps/60

if global.shake{
	dist = random_range(1.0, 2.0)+global.shakePower/2
}else{
	dist = random_range(1.0, 2.0)
}


uni_dist = shader_get_uniform(sh_cromathicAberration, "dist")


if !instance_exists(obj_shakeController){
	//instance_create_depth(0, 0, -1, obj_shakeController)
}