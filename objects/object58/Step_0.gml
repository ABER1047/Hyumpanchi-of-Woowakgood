/// @description Insert description here
// You can write your code in this editor
depth = out_daepiso.depth-1
if global.nickname = "빈센트반고흐"
{
image_index = 5
}
else if global.nickname = "냉-장go"
{
image_index = 4
}
else if global.nickname = "파키스탄아저씨"
{
image_index = 3
}
else
{
image_index = global.vr_weared
}

//else if global.nickname = "흑칠"
//{
//image_index = 2
//}

if instance_number(player) > 0
{
if p_mes = -1 && global.playing_scene = 0
{
	if point_distance(x,366,player.x,player.y) <= 16
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "상호작용 (D)"
	p_mes.target = player
	}
}

if (point_distance(x,366,player.x,player.y) > 16 || (global.playing_scene = 1 && interatction = 0))
{
p_mes = -1
}

if interatction = 1
{
player.image_index = 0
player.x += (x - player.x)*0.1
player.cannot_move = 1
}
}