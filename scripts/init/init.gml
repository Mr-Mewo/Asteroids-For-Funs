// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region //FIRE
var pf = part_type_create()

part_type_shape(pf, pt_shape_square)
part_type_life(pf, 120, 240)

part_type_size(pf, 0.05, 0.01, random_range(0.00001, 0.0001), 0.0005)
part_type_orientation(pf, 0, 360, random_range(-2, 2), 0.25, false)
part_type_color3(pf, c_yellow, c_red, c_gray)
part_type_alpha2(pf, 0.75, 0.1)

part_type_direction(pf, 0, 360, random_range(-2, 2), 5)
part_type_speed(pf, 0.1, 0.2, -0.0001, 0.01)
//part_type_gravity(pp, 0.05, -90)

global.particle_fire = pf
#endregion

#region//ASTEROID DESTROY
var paA = part_type_create()
var paB = part_type_create()
var paC = part_type_create()

part_type_sprite(paA, spr_particulaAsteroid0, false, false, false)
part_type_sprite(paB, spr_particulaAsteroid1, false, false, false)
part_type_sprite(paC, spr_particulaAsteroid2, false, false, false)
part_type_life(paA, 480, 960)
part_type_life(paB, 480, 960)
part_type_life(paC, 480, 960)

part_type_size(paA, 0.75, 1.25, 0, 0)
part_type_size(paB, 0.75, 1.25, 0, 0)
part_type_size(paC, 0.75, 1.25, 0, 0)
part_type_orientation(paA, 0, 360, random_range(-2, 2), 0.25, false)
part_type_orientation(paB, 0, 360, random_range(-2, 2), 0.25, false)
part_type_orientation(paC, 0, 360, random_range(-2, 2), 0.25, false)
part_type_alpha2(paA, 0.75, 0.1)
part_type_alpha2(paB, 0.75, 0.1)
part_type_alpha2(paC, 0.75, 0.1)

part_type_direction(paA, 0, 360, 0, 0)
part_type_direction(paB, 0, 360, 0, 0)
part_type_direction(paC, 0, 360, 0, 0)
part_type_speed(paA, 0, 1, 0, 0)
part_type_speed(paB, 0, 1, 0, 0)
part_type_speed(paC, 0, 1, 0, 0)

global.particle_asteroidA = paA
global.particle_asteroidB = paB
global.particle_asteroidC = paC
#endregion

#region//PLAYER DESTROY
var ppA = part_type_create()
var ppB = part_type_create()
var ppC = part_type_create()

part_type_sprite(ppA, spr_particulaPlayer0, false, false, false)
part_type_sprite(ppB, spr_particulaPlayer1, false, false, false)
part_type_sprite(ppC, spr_particulaPlayer2, false, false, false)
part_type_life(ppA, 480, 960)
part_type_life(ppB, 480, 960)
part_type_life(ppC, 480, 960)

part_type_size(ppA, 0.75, 1.25, 0, 0)
part_type_size(ppB, 0.75, 1.25, 0, 0)
part_type_size(ppC, 0.75, 1.25, 0, 0)
part_type_orientation(ppA, 0, 360, random_range(-2, 2), 0.25, false)
part_type_orientation(ppB, 0, 360, random_range(-2, 2), 0.25, false)
part_type_orientation(ppC, 0, 360, random_range(-2, 2), 0.25, false)
part_type_alpha2(ppA, 0.75, 0.1)
part_type_alpha2(ppB, 0.75, 0.1)
part_type_alpha2(ppC, 0.75, 0.1)

part_type_direction(ppA, 0, 360, 0, 0)
part_type_direction(ppB, 0, 360, 0, 0)
part_type_direction(ppC, 0, 360, 0, 0)
part_type_speed(ppA, 0, 1, 0, 0)
part_type_speed(ppB, 0, 1, 0, 0)
part_type_speed(ppC, 0, 1, 0, 0)

global.particle_playerA = ppA
global.particle_playerB = ppB
global.particle_playerC = ppC
#endregion

