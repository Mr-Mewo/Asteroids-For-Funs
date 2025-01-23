function scr_shoot1(argument0) {
	var angle = argument0

	var bullet = instance_create_depth(x, y, 1, obj_shotNave)
	//bullet.direction = b
	bullet.speed = 0
	bullet.direction = obj_nave.image_angle+angle
	bullet.image_angle = bullet.direction

	bullet.x += + lengthdir_x(16, bullet.direction);
	bullet.y += + lengthdir_y(16, bullet.direction);


}
