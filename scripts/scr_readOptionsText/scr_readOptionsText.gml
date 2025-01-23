function scr_readOptionsText() {
	if file_exists("options.txt"){
		var	file = file_text_open_read(working_directory + "\options.txt")
		
		
		var sound = file_text_read_real(file)
		file_text_readln(file)
		
		var shake = file_text_read_real(file)
		file_text_readln(file)
		
		var shader = file_text_read_real(file)
		file_text_readln(file)
		
		var particles = file_text_read_real(file)
		file_text_readln(file)
		
		var fire = file_text_read_real(file)
		file_text_readln(file)
		
		var m_blur = file_text_read_real(file)
		file_text_readln(file)
		
		var m_blur_strength = file_text_read_real(file)
		file_text_readln(file)
		file_text_readln(file)
		
		
		var wrap = file_text_read_real(file)
		file_text_readln(file)
		
		var imortal = file_text_read_real(file)
		file_text_readln(file)
		
		var invencB = file_text_read_real(file)
		file_text_readln(file)
		
		var plusB = file_text_read_real(file)
		file_text_readln(file)
		
		var difficult = file_text_read_real(file)
		file_text_readln(file)
		
		var shotDelay = file_text_read_real(file)
		file_text_readln(file)
		
		
		file_text_close(file);
		
		global.sound = sound
		global.shake = shake
		global.shader = shader
		global.particles = particles
		global.fire = fire
		global.m_blur = m_blur
		global.m_blur_strength = m_blur_strength

		global.wrap = wrap
		global.imortal = imortal
		global.invencB = invencB
		global.plusB = plusB
		global.difficult = difficult
		global.shotDelay = shotDelay
	
	}else{
		global.sound = true
		global.shake = true
		global.shader = true
		global.particles = true
		global.fire = true
		global.m_blur = true
		global.m_blur_strength = 1

		global.wrap = false
		global.imortal = false
		global.invencB = false
		global.plusB = true
		global.difficult = 1
		global.shotDelay = 1
	}
}
