function scr_writeOptionsText() {
	if file_exists("options.txt"){
		var	file = file_text_open_write(working_directory + "\options.txt")
		
		file_text_write_real(file, global.sound)
		file_text_writeln(file)
		
		file_text_write_real(file, global.shake)
		file_text_writeln(file)
		
		file_text_write_real(file, global.shader)
		file_text_writeln(file)
		
		file_text_write_real(file, global.particles)
		file_text_writeln(file)
		
		file_text_write_real(file, global.fire)
		file_text_writeln(file)
		
		file_text_write_real(file, global.m_blur)
		file_text_writeln(file)
		
		file_text_write_real(file, global.m_blur_strength)
		file_text_writeln(file)
		file_text_writeln(file)
		
		
		file_text_write_real(file, global.wrap)
		file_text_writeln(file)
		
		file_text_write_real(file, global.imortal)
		file_text_writeln(file)
		
		file_text_write_real(file, global.invencB)
		file_text_writeln(file)
		
		file_text_write_real(file, global.plusB)
		file_text_writeln(file)
		
		file_text_write_real(file, global.difficult)
		file_text_writeln(file)
		
		file_text_write_real(file, global.shotDelay)
		file_text_writeln(file)
		
		
		file_text_close(file);
		
	}
}
