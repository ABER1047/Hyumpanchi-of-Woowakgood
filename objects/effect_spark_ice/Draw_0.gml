/// @description Insert description here
// You can write your code in this editor
for(var i = 6; i <= 30; i++)
{
	if point_distance(x,y,spark_x[i],spark_y[i]) < 32
	{
	draw_set_color(c_white)
	draw_set_alpha((0.2-alpha)*1.25)
	draw_line_width(x,y,spark_x[i],spark_y[i],2)
	}
	
	if alpha2 > 0
	{
		if point_distance(x,y,spark_x[i],spark_y[i]) < 32
		{
		draw_set_color($FFFFF1CC)
		draw_set_alpha(alpha2)
		draw_line_width(x,y,spark_x[i],spark_y[i],2)
		}
	}
}

//draw_text(x,y,string(spark_x[time_s])+" / "+string(spark_y[time_s])+" / "+string(vspeed))
//draw_text(x,y,string(gravity)+" / "+string(vspeed)+" / "+string(alpha))