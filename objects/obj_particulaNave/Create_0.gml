/// @description Insert description here
// You can write your code in this editor
direction = obj_nave.image_angle + random_range(-20, 20) - 180

image_angle = random(360)
x = x + lengthdir_x(16, direction);
y = y + lengthdir_y(16, direction);
speed = 3
spd = speed
image_alpha = random_range(0.5, 0.75)

scale = random_range(1.3, 1.7)
image_xscale = scale
image_yscale = scale

scr_sound(snd_move, 1, 0)

scr_speedCreate()

r = 255
g = 255
b = 0
colSub = random_range(5, 10)