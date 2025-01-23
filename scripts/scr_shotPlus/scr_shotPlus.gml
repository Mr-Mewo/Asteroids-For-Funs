// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shotPlus(){
	if global.plusB{
		fangle = (global.shot-1)*10
		for (var s = -fangle; s <= fangle; s+= 20){
			scr_shoot(s)
		}
	}else{
		//global.shot = 0
		scr_shoot(0)
	}
}