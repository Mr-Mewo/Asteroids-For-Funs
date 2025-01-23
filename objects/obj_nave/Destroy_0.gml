/// @description Insert description here
// You can write your code in this editor

global.diedMessageOnce = true
global.shakePower = 15
if global.fire{
	//part_particles_create(global.particle_system, x, y, global.particle_fire, 100)]
	repeat (25) {
		var angle = random(360)*pi*2
		r = random(10)
		xxx = cos(angle)*r + x
		yyy = sin(angle)*r + y
	    part_particles_create(global.particle_system, xxx, yyy, global.particle_fire, 5)
	}
}