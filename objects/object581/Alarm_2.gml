/// @description Insert description here
// You can write your code in this editor
if p_mes != -1
{
instance_destroy(player_message)
}
p_mes = -1
global.playing_scene = 0
interatction = 0
player.cannot_move = 0
skip_dilay = 0
scene = 0

image_xscale = 1
image_yscale = 1
image_alpha = 0.6