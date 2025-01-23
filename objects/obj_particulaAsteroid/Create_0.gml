/// @description Insert description here
// You can write your code in this editor
var sprites = [spr_particulaAsteroid0, spr_particulaAsteroid1, spr_particulaAsteroid2]

col = 255//(255/4)*3
image_blend = make_color_rgb(col, col, col)

sprite_index = sprites[random(3)]
direction = /*point_direction(x, y, obj_nave.x, obj_nave.y)+random_range(-45, 45)-180*/ random(360)
image_angle = random(360)

speed = random_range(1, 3)
alphaSubtract = random_range(0.05, 0.1)

scr_speedCreate()

