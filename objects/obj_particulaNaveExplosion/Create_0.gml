/// @description Insert description here
// You can write your code in this editor
var sprites = [spr_naveExplosion0, spr_naveExplosion1, spr_naveExplosion2, spr_naveExplosion3, spr_naveExplosion4]

col = 255
image_blend = make_color_rgb(col, col, col)

sprite_index = sprites[random(5)]
direction = random(360)
image_angle = random(360)

speed = random_range(0.25, 6)
alphaSubtract = random_range(0.01, 0.05)

scr_speedCreate()
