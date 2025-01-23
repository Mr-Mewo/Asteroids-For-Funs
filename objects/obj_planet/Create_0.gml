/// @description Insert description here
// You can write your code in this editor

direction = 0
depth=8
col = 255
image_blend = make_color_rgb(col, col, col)


speed = random_range(0.25, 1.25)/2
scale = 1
image_xscale = scale
image_yscale = scale

image_angle+=random_range(-45, 45)

x=-320//*scale
y=room_height/4*3

scr_speedCreate()