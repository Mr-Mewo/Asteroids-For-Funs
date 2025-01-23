function scr_sound(argument0, argument1, argument2) {
	var soundId = argument0
	var priority = argument1
	var loops = argument2

	if global.sound{
		audio_play_sound(soundId, priority, loops)
	}



}
