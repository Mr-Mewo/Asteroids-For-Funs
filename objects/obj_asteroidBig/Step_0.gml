/// @description Insert description here
// You can write your code in this editor
scr_speedStep()

move_wrap(1, 1, 0)

if place_meeting(x, y, obj_nave){
	instance_destroy()
	if !global.imortal and !global.shield{
		//scr_addSomeVariables(-100)
		global.life--
		global.shot=1
	}
	global.hurtColorAmount = 1
	global.shield = false
	//global.addPowerRound = 0
	//global.addPowerBomb = 0
}
if place_meeting(x, y, obj_shotNave){
	var obj = instance_place(x, y, obj_shotNave)
	if !global.invencB{
		instance_destroy(obj)
	}
	instance_destroy()
}

var pInpulse = instance_place(x, y , obj_particulaNave)
if pInpulse{
	motion_add(point_direction(x, y, pInpulse.x, pInpulse.y)-180, (pInpulse.scale*pInpulse.image_alpha)/5)
	instance_destroy(pInpulse)
}

if !global.paused{
	image_angle += angleAdd
}

/*if instance_exists(obj_planet){
	motion_add(point_direction(x, y, obj_planet.x, obj_planet.y), 0.01)
}
*/