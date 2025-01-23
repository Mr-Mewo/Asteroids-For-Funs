function scr_createOptionsText() {
	if !file_exists("options.txt"){
		var	file = file_text_open_write(working_directory + "\options.txt")
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		file_text_writeln(file)
		
		
		file_text_write_real(file, 0)
		file_text_writeln(file)
		
		file_text_write_real(file, 0)
		file_text_writeln(file)
		
		file_text_write_real(file, 0)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		file_text_write_real(file, 1)
		file_text_writeln(file)
		
		
		file_text_close(file);
		
	}
}
