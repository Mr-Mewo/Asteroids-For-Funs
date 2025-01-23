function scr_shootBomb(argument0) {
	var angle = argument0

	bullet = instance_create_depth(x, y, 1, obj_bomb)
	//bullet.direction = b
	bullet.speed = 5
	bullet.direction = obj_nave.image_angle+angle
	bullet.image_angle = bullet.direction

	bullet.x += + lengthdir_x(16, bullet.direction);
	bullet.y += + lengthdir_y(16, bullet.direction);


}
