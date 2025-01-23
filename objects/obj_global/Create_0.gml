/// @description Insert description here
// You can write your code in this editor

global.asteroidCount = 0

if global.difficult == 0{
	dificuldade = 2
}else if global.difficult == 1{
	dificuldade = 5
}else{
	dificuldade = 10
}

for (c = 0; c < dificuldade; c++){
	instance_create_depth(random(room_width), random(room_height), 2, obj_asteroidBig)
}

global.nivel = 1
global.shot = 1
global.pontos = 0

global.addLife = 1

#region deathmessage

//global.diedMessageOnce = false
var normalDeathText = ["Ouch",
					   "dont  trust  in  asteroids",
					   "ops...",
					   "Baby  asteroids  are  so  cute  arent  they?"]

var speedDeathText = ["Slow  Down  babe",
			          "You  will  be  fined  for  high  speed",
			          "I  am  speed",
			          "YEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"]
			
var heatDeathText = ["Hot  Stuff",
				     "100°C  is  an  optimal  temperature  for  boiling  water.",
				     "just  chilling",
				     "im  not  sweating,  that  is  just  water"]

global.deathMessage_normal = normalDeathText[random(4)]
global.deathMessage_speed = speedDeathText[random(4)]
global.deathMessage_Heat = heatDeathText[random(4)]//may not evem add this shit but anyway, its here

#endregion

#region///create

/*for (s = 0; s < 2000; s++){
	instance_create_depth(random(room_width), random(room_height), 10, obj_star0)
}*/
once = true
instance_create_layer(0, 0, "Instances", obj_text)

instance_create_depth(0, 0, -1, obj_powerRound)
instance_create_depth(0, 0, -1, obj_powerBomb)
instance_create_depth(0, 0, -1, obj_powerShield)

instance_create_depth(room_width/2, room_height/2, -1, obj_nave)

instance_create_depth(0, 0, 0, obj_particle_manager)
//instance_create_depth(0, room_height/2, -1, obj_nave1)

#endregion