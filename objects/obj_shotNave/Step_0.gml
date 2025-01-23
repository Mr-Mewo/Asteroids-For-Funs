/// @description Insert description here
// You can write your code in this editor

scr_speedStep()

if global.wrap{
	move_wrap(1, 1, 0)
}

if global.fire and !global.paused{
	if createFire >= 6{
		/*var f = instance_create_depth(x, y, 10, obj_fire)
		f.direction = direction + random_range(-10, 10) - 180*/
		part_particles_create(global.particle_system, x, y, global.particle_fire, 1)
		createFire = random(5)
	}
	createFire++
}