/// @description Insert description here
// You can write your code in this editor

global.asteroidCount--


var name = object_get_name(object_index)
switch name{
	case "obj_asteroidBig":
		instance_create_depth(x, y, 2, obj_asteroidMed)
		instance_create_depth(x, y, 2, obj_asteroidMed)
		
		scr_addSomeVariables(20)
		
		global.shakePower = 5
		
		if generateParticles{
			if global.particles{
				part_particles_create(global.particle_system, x, y, global.particle_asteroidA, int64(25/3))
				part_particles_create(global.particle_system, x, y, global.particle_asteroidB, int64(25/3))
				part_particles_create(global.particle_system, x, y, global.particle_asteroidC, int64(25/3))
			}
			if global.fire{
				part_particles_create(global.particle_system, x, y, global.particle_fire, 25)
			}
			scr_sound(snd_asteroidbig, 1, 0)
		}
		
	break;
	case "obj_asteroidMed":
		instance_create_depth(x, y, 2, obj_asteroidLow)
		instance_create_depth(x, y, 2, obj_asteroidLow)
		
		scr_addSomeVariables(50)
		
		global.shakePower = 3

		if generateParticles{
			if global.particles{
				part_particles_create(global.particle_system, x, y, global.particle_asteroidA, int64(12.5/3))
				part_particles_create(global.particle_system, x, y, global.particle_asteroidB, int64(12.5/3))
				part_particles_create(global.particle_system, x, y, global.particle_asteroidC, int64(12.5/3))
			}
			if global.fire{
				part_particles_create(global.particle_system, x, y, global.particle_fire, 12)
			}
			scr_sound(snd_asteroidMed, 1, 0)
		}
	break;
	case "obj_asteroidLow":
		
		scr_addSomeVariables(100)
		
		global.shakePower = 2
		
		if generateParticles{
			if global.particles{
				part_particles_create(global.particle_system, x, y, global.particle_asteroidA, int64(6.25/3))
				part_particles_create(global.particle_system, x, y, global.particle_asteroidB, int64(6.25/3))
				part_particles_create(global.particle_system, x, y, global.particle_asteroidC, int64(6.25/3))
			}
			if global.fire{
				part_particles_create(global.particle_system, x, y, global.particle_fire, 6)
			}
			scr_sound(snd_asteroidLow, 1, 0)
		}
	break;
}



//instance_create_depth(x, y, -1, obj_particulaExplosao)
