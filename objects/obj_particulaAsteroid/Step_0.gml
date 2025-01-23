/// @description Insert description here
// You can write your code in this editor
scr_speedStep()

if !global.particles{image_alpha = 0}else{image_alpha = 1}

image_alpha -= alphaSubtract
/*
if image_alpha < 0 {instance_destroy()}
*/