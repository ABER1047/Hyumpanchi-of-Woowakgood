/// @description Insert description here
// You can write your code in this editor
depth = 99999

if global.vr_weared = 1
{
	if ending_credits.scene_2_alpha > 2000
	{
	laser_direction_time ++
	image_index = 1
	var xx = obj_floor.x
	var yy = 1000//1312

		if laser_direction_time > 300
		{
		laser_direction_time_a ++
		laser_direction_time = 0
			if laser_direction_time_a > 1
			{
			laser_direction_time_a = 0
			}
		}
	
		if laser_direction_time_a = 0
		{
		t_laser_direction_1 = 135
		t_laser_direction_2 = 45
		}
	
		if laser_direction_time_a = 1
		{
		t_laser_direction_1 = 45
		t_laser_direction_2 = 135
		}
	
		laser_direction_1 += (t_laser_direction_1 - laser_direction_1)*0.02
		laser_direction_2 += (t_laser_direction_2 - laser_direction_2)*0.02
	
	

		if instance_number(bg_laser_1) = 0
		{
		bg_laser_1 = instance_create_depth(xx+230,yy,Object110.depth-2,block_laser)
		bg_laser_1.width_ = 20
		bg_laser_1.x2 = xx+1600
		bg_laser_1.y2 = yy
		bg_laser_1.damage_able = 0
		bg_laser_1.color_ = $FFFFAF55
		bg_laser_1.direction = laser_direction_2
		}
		else
		{
		bg_laser_1.direction = laser_direction_2
		}
	
		if instance_number(bg_laser_2) = 0
		{
		bg_laser_2 = instance_create_depth(xx+230+128,yy,Object110.depth-2,block_laser)
		bg_laser_2.width_ = 20
		bg_laser_2.x2 = xx+2300
		bg_laser_2.y2 = yy
		bg_laser_2.damage_able = 0
		bg_laser_2.color_ = $FF9F2FED
		bg_laser_2.direction = laser_direction_1
		}
		else
		{
		bg_laser_2.direction = laser_direction_1
		}
	
		if instance_number(bg_laser_3) = 0
		{
		bg_laser_3 = instance_create_depth(xx-230,yy,Object110.depth-2,block_laser)
		bg_laser_3.width_ = 20
		bg_laser_3.x2 = xx-2000
		bg_laser_3.y2 = yy
		bg_laser_3.damage_able = 0
		bg_laser_3.color_ = $FFFFAF55
		bg_laser_3.direction = laser_direction_2
		}
		else
		{
		bg_laser_3.direction = laser_direction_2
		}
	
		if instance_number(bg_laser_4) = 0
		{
		bg_laser_4 = instance_create_depth(xx-230-128,yy,Object110.depth-2,block_laser)
		bg_laser_4.width_ = 20
		bg_laser_4.x2 = xx-2300
		bg_laser_4.y2 = yy
		bg_laser_4.damage_able = 0
		bg_laser_4.color_ = $FF9F2FED
		bg_laser_4.direction = laser_direction_1
		}
		else
		{
		bg_laser_4.direction = laser_direction_1
		}
	}
}
else
{
	if bg_laser_1 != noone && instance_number(bg_laser_1) > 0 && instance_number(ending_credits) > 0
	{
	instance_destroy(bg_laser_1)
	instance_destroy(bg_laser_2)
	instance_destroy(bg_laser_3)
	instance_destroy(bg_laser_4)
	bg_laser_1 = noone
	}
}