function scr_drawUI() {
	
	//repeat (10000) {
		/*var angle = random(360)*pi
		r = random(100)
		xxxx = cos(angle)*r
		yyyy = sin(angle)*r
	    draw_point(xxxx+50, yyyy+50)*/
		//draw_point_color(random(room_width), random(room_height))
	//}
	
	if instance_exists(obj_global){
	#region UI
	if keyboard_check_pressed(ord("I")){
		if info{
			info = false
		}else{
			info = true
		}
	}

	draw_set_font(fnt_big)
	if info{ytextAlpha = 220}else{ytextAlpha = 100}
	
	if instance_exists(obj_nave){
		if obj_nave.x < room_width/2 + 20 and obj_nave.y < ytextAlpha and instance_exists(obj_nave){
			if textAlpha < 0.5 {textAlpha -= 0.001}else{textAlpha = 0.5}
		}else{
			if textAlpha > 1 {textAlpha += 0.001}else{textAlpha = 1}
		}
		draw_set_alpha(textAlpha)
	}else{
		draw_set_alpha(1)
	}
	
	var txtX = 20
	var txtY = 10
	draw_text(txtX, txtY, "Life: " + string(global.life))
	draw_text(txtX, txtY+20, "Level: " + string(global.nivel))
	draw_text(txtX, txtY+40, "Score: " + string(global.pontos))

	draw_text(txtX, txtY+60, "mileage: " + string(global.distanciaPercorrida))
	//draw_text(txtX, txtY+80, "test: " + string(global.shakePower))



	if info{
		
		
		
		draw_rectangle(txtX, txtY+84, 250, txtY+86, false)
		if instance_exists(obj_nave){
			draw_text(txtX, txtY+90, "x: " + string(obj_nave.x))
			draw_text(txtX, txtY+110, "y: " + string(obj_nave.y))
			draw_text(txtX, txtY+130, "speed: " + string(obj_nave.speed))
			draw_text(txtX, txtY+150, "direction: " + string(obj_nave.image_angle))
			draw_text(txtX, txtY+170, "FPS: " + string(fps) + " - " + string(int64(fps_real)))
			draw_text(txtX, txtY+190, "test: " + string(global.rFps))
		}else{
			draw_text(txtX, txtY+90, "x: ---")
			draw_text(txtX, txtY+110, "y: ---")
			draw_text(txtX, txtY+130, "speed: ---")
			draw_text(txtX, txtY+150, "direction: ---")
			draw_text(txtX, txtY+170, "FPS: " + string(int64(fps)))
	
		}
	}

	if !instance_exists(obj_nave){	
		draw_set_halign(fa_center)
		//global.diedMessageOnce = false
		draw_set_color(c_red)
		draw_text(room_width/2, room_height/2-25, "You  died")
		draw_set_color(c_white)
		draw_text(room_width/2, room_height/2, "Prees  R  to  restart")
		
		draw_set_font(fnt_low)
		draw_set_alpha(0.5)
		
		
		#region //Death messages
		
		if global.overHeating{
			//draw_text(room_width/2, room_height/2+25, "Slow  Down  babe")
			draw_text(room_width/2, room_height/2+25, global.deathMessage_speed)
		}else{
			//draw_text(room_width/2, room_height/2+25, "Touching  asteroids  hurt,  right?")
			draw_text(room_width/2, room_height/2+25, global.deathMessage_normal)
		}
		
		draw_set_halign(fa_left)
		draw_set_font(fnt_big)
		draw_set_alpha(1)
		
		#endregion
	}

	draw_set_font(fnt_low)
	draw_set_alpha(1)
	var shakeToPowerSpecialX = obj_shakeController.xx
	var shakeToPowerSpecialY = obj_shakeController.yy
	if global.powerRound>0{
		draw_text(obj_powerRound.x-4+shakeToPowerSpecialX, obj_powerRound.y-4+shakeToPowerSpecialY, global.powerRound)
	}
	if global.powerBomb>0{
		draw_text(obj_powerBomb.x-4+shakeToPowerSpecialX, obj_powerBomb.y-4+shakeToPowerSpecialY, global.powerBomb)
	}
	if global.powerShield>0{
		draw_text(obj_powerShield.x-4+shakeToPowerSpecialX, obj_powerShield.y-4+shakeToPowerSpecialY, global.powerShield)
	}


	#endregion
	}
	#region menu
	if global.paused{
		draw_sprite(spr_pauseBg, 0, 0, 0)
		if keyboard_check_pressed(vk_up)/* and pauseSelected>0*/{
			if pauseSelected > 0{
				pauseSelected--
			}else{
				pauseSelected = maxselect
			}
			scr_sound(snd_selectMove, 1, 0)
		}
		if keyboard_check_pressed(vk_down)/* and pauseSelected<maxselect*/{
			if pauseSelected < maxselect{
				pauseSelected++
			}else{
				pauseSelected = 0
			}
			scr_sound(snd_selectMove, 1, 0)
		}
	
		draw_set_font(fnt_big)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
	
	
		var yy = room_height/2
		col = c_black
	
		switch menuSet{
			#region principal
			case 0:
			maxselect = 3
			if pauseSelected == 0 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy-75, 110, 30, 2.5, col)
			draw_text(room_width/2, yy+7-75, "start")
	
			if pauseSelected == 1 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy-25, 255, 30, 2.5, col)
			draw_text(room_width/2, yy+7-25, "options-style")
	
			if pauseSelected == 2 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+25, 240, 30, 2.5, col)
			draw_text(room_width/2, yy+7+25, "options-game")
	
			if pauseSelected == 3 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+75, 90, 30, 2.5, col)
			draw_text(room_width/2, yy+7+75, "exit")
	
	
			if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter){
				switch pauseSelected{
					case 0:
						if !instance_exists(obj_global){
							instance_create_depth(0, 0, 0, obj_global)
						}
						global.paused=false
					break;
					case 1:
						pauseSelected=0
						menuSet=1
					break;
					case 2:
						pauseSelected=0
						menuSet=2
					break;
					case 3:
						game_end()
					break;
				}
				scr_sound(snd_select, 1, 0)
			}
			if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_backspace){
				//pauseSelected=0
				//menuSet=2
				if !instance_exists(obj_global){
						instance_create_depth(0, 0, 0, obj_global)
					}
					global.paused=false
			}
			break;
			#endregion
			#region optionsStyle
			case 1:
			maxselect = 7
			
			var fuck = 25
			yPlus = -200+fuck
			if pauseSelected == 0 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 195, 30, 2.5, col)
			if global.sound{
				draw_text(room_width/2, yy+7+yPlus, "sounds/on")
			}else{
				draw_text(room_width/2, yy+7+yPlus, "sounds/off")
			}
		
			yPlus = -150+fuck
			if pauseSelected == 1 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 175, 30, 2.5, col)
			if global.shake{
				draw_text(room_width/2, yy+7+yPlus, "shake/on")
			}else{
				draw_text(room_width/2, yy+7+yPlus, "shake/off")
			}
		
			yPlus = -100+fuck
			if pauseSelected == 2 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 195, 30, 2.5, col)
			if global.shader{
				draw_text(room_width/2, yy+7+yPlus, "shader/on")
			}else{
				draw_text(room_width/2, yy+7+yPlus, "shader/off")
			}
		
			yPlus = -50+fuck
			if pauseSelected == 3 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 250, 30, 2.5, col)
			if global.particles{
				draw_text(room_width/2, yy+7+yPlus, "particles/on")
			}else{
				draw_text(room_width/2, yy+7+yPlus, "particles/off")
			}
			
			yPlus = 0+fuck
			if pauseSelected == 4 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 155, 30, 2.5, col)
			if global.fire{
				draw_text(room_width/2, yy+7+yPlus, "fire/on")
			}else{
				draw_text(room_width/2, yy+7+yPlus, "fire/off")
			}
			
			yPlus = 50+fuck
			if pauseSelected == 5 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 285, 30, 2.5, col)
			if global.m_blur{
				draw_text(room_width/2, yy+7+yPlus, "motion-blur/on")
			}else{
				draw_text(room_width/2, yy+7+yPlus, "motion-blur/off")
			}
			
			yPlus = 100+fuck
			if pauseSelected == 6 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 420, 30, 2.5, col)
			if global.m_blur_strength == 0{
				draw_text(room_width/2, yy+7+yPlus, "m-blur-strength/weak")
			}else if global.m_blur_strength == 1{
				draw_text(room_width/2, yy+7+yPlus, "m-blur-strength/medium")
			}else{
				draw_text(room_width/2, yy+7+yPlus, "m-blur-strength/strong")
			}
		
			yPlus = 150+fuck
			if pauseSelected == 7 {col = c_gray}else{col = c_black}
			scr_drawEspecialRectangle(room_width/2, yy+yPlus, 110, 30, 2.5, col)
			draw_text(room_width/2, yy+7+yPlus, "back")
		
			if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter){
				switch pauseSelected{
					case 0:
						if global.sound{
							global.sound=false
						}else{
							global.sound=true
						}
					break;
					case 1:
						if global.shake{
							global.shake=false
						}else{
							global.shake=true
						}
					break;
					case 2:
						if global.shader{
							global.shader=false
						}else{
							global.shader=true
						}
					break;
					case 3:
						if global.particles{
							global.particles=false
						}else{
							global.particles=true
						}
					break;
					case 4:
						if global.fire{
							global.fire=false
						}else{
							global.fire=true
						}
					break;
					case 5:
						if global.m_blur{
							global.m_blur=false
						}else{
							global.m_blur=true
						}
					break;
					case 6:
						if global.m_blur_strength < 2{
							global.m_blur_strength++
						}else{
							global.m_blur_strength=0
						}
					break;
					case 7:
						pauseSelected=0
						menuSet=0
						scr_writeOptionsText()
						
						if !global.fire and instance_exists(obj_fire){
							instance_destroy(obj_fire)
						}
						if !global.particles{
							if instance_exists(obj_particulaAsteroid){
								instance_destroy(obj_particulaAsteroid)
							}
							if instance_exists(obj_particulaAsteroidB){
								instance_destroy(obj_particulaAsteroidB)
							}
							if instance_exists(obj_particulaNaveExplosion){
								instance_destroy(obj_particulaNaveExplosion)
							}
						}
					break;
				}
				scr_sound(snd_select, 1, 0)
			}
			if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_backspace){
				pauseSelected=0
				menuSet=0
				scr_writeOptionsText()
						
				if !global.fire and instance_exists(obj_fire){
					instance_destroy(obj_fire)
				}
				if !global.particles{
					if instance_exists(obj_particulaAsteroid){
						instance_destroy(obj_particulaAsteroid)
					}
					if instance_exists(obj_particulaAsteroidB){
						instance_destroy(obj_particulaAsteroidB)
					}
					if instance_exists(obj_particulaNaveExplosion){
						instance_destroy(obj_particulaNaveExplosion)
					}
				}
			}
			break;
			#endregion
			#region optionsGame
			case 2:
				maxselect = 6
		
				yPlus = -150
				if pauseSelected == 0 {col = c_gray}else{col = c_black}
				scr_drawEspecialRectangle(room_width/2, yy+yPlus, 160, 30, 2.5, col)
				if global.wrap{
					draw_text(room_width/2, yy+7+yPlus, "wrap/on")
				}else{
					draw_text(room_width/2, yy+7+yPlus, "wrap/off")
				}
		
				yPlus = -100
				if pauseSelected == 1 {col = c_gray}else{col = c_black}
				scr_drawEspecialRectangle(room_width/2, yy+yPlus, 210, 30, 2.5, col)
				if global.imortal{
					draw_text(room_width/2, yy+7+yPlus, "imortal/on")
				}else{
					draw_text(room_width/2, yy+7+yPlus, "imortal/off")
				}
		
				yPlus = -50
				if pauseSelected == 2 {col = c_gray}else{col = c_black}
				scr_drawEspecialRectangle(room_width/2, yy+yPlus, 375, 30, 2.5, col)
				if global.invencB{
					draw_text(room_width/2, yy+7+yPlus, "invencible  bullet/on")
				}else{
					draw_text(room_width/2, yy+7+yPlus, "invencible  bullet/off")
				}
		
				yPlus = 0
				if pauseSelected == 3 {col = c_gray}else{col = c_black}
				scr_drawEspecialRectangle(room_width/2, yy+yPlus, 290, 30, 2.5, col)
				if global.plusB{
					draw_text(room_width/2, yy+7+yPlus, "more  bullets/on")
				}else{
					draw_text(room_width/2, yy+7+yPlus, "more  bullets/off")
				}
			
				yPlus = 50
				if pauseSelected == 4 {col = c_gray}else{col = c_black}
				scr_drawEspecialRectangle(room_width/2, yy+yPlus, 305, 30, 2.5, col)
				if global.difficult == 0{
					draw_text(room_width/2, yy+7+yPlus, "difficult/easy")
				}else if global.difficult == 1{
					draw_text(room_width/2, yy+7+yPlus, "difficult/medium")
				}else{
					draw_text(room_width/2, yy+7+yPlus, "difficult/hard")
				}
			
				yPlus = 100
				if pauseSelected == 5 {col = c_gray}else{col = c_black}
				scr_drawEspecialRectangle(room_width/2, yy+yPlus, 195, 30, 2.5, col)
				if global.shotDelay == 0{
					draw_text(room_width/2, yy+7+yPlus, "bps/low")
				}else if global.shotDelay == 1{
					draw_text(room_width/2, yy+7+yPlus, "bps/medium")
				}else{
					draw_text(room_width/2, yy+7+yPlus, "bps/fast")
				}
		
				yPlus = 150
				if pauseSelected == 6 {col = c_gray}else{col = c_black}
				scr_drawEspecialRectangle(room_width/2, yy+yPlus, 110, 30, 2.5, col)
				draw_text(room_width/2, yy+7+yPlus, "back")
		
				if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter){
					switch pauseSelected{
						case 0:
							if global.wrap{
								global.wrap=false
							}else{
								global.wrap=true
							}
						break;
						case 1:
							if global.imortal{
								global.imortal=false
							}else{
								global.imortal=true
							}
						break;
						case 2:
							if global.invencB{
								global.invencB=false
							}else{
								global.invencB=true
							}
						break;
						case 3:
							if global.plusB{
								global.plusB=false
							}else{
								global.plusB=true
							}
						break;
						case 4:
							if global.difficult < 2{
								global.difficult++
							}else{
								global.difficult=0
							}
						break;
						case 5:
							if global.shotDelay < 2{
								global.shotDelay++
							}else{
								global.shotDelay=0
							}
						break;
						case 6:
							pauseSelected=0
							menuSet=0
							scr_writeOptionsText()
						break;
					}
					scr_sound(snd_select, 1, 0)
				}
				if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_backspace){
					pauseSelected=0
					menuSet=0
					scr_writeOptionsText()
				}
			break;
			#endregion
		}
	
	
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	
	}
	#endregion
}
