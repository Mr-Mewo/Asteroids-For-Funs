///@param x
///@param y
///@param xSize
///@param ySize
///@param lineSize
///@param color
function scr_drawEspecialRectangle(argument0, argument1, argument2, argument3, argument4, argument5) {

	xx = argument0
	yy = argument1
	xSize = argument2
	ySize = argument3
	lineSize = argument4
	color = argument5

	draw_rectangle(xx-xSize/2, yy-ySize/2, xx+xSize/2, yy+ySize/2, 0)
	var colRec = color
	draw_rectangle_color(xx-xSize/2+lineSize, yy-ySize/2+lineSize, xx+xSize/2-lineSize, yy+ySize/2-lineSize, colRec, colRec, colRec, colRec, 0)
	


}