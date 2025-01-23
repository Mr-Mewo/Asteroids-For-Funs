/// @description Insert description here
// You can write your code in this editor
r = 255
g = 255
b = 0

global.fireCount++

if !global.fire{instance_destroy()}

colSub = random_range(1.25, 3)

alphaFireSubtract = 255*2

image_blend = make_color_rgb(r, g, b)


//
angleAdd = random_range(-2, 2)

image_angle = random(360)

x = x + lengthdir_x(16, direction);
y = y + lengthdir_y(16, direction);
speed = random_range(0.05, 0.15)
spd = speed
spdSub = random_range(0.0002, 0.00005)

scaleAdd = random_range(0.002, 0.0005)
scale = random_range(0.1, 0.2)
image_xscale = scale
image_yscale = scale

//scr_sound(snd_move, 1, 0)

scr_speedCreate()

fireAdd = random(480)
