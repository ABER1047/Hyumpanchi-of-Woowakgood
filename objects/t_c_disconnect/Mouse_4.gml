/// @description Insert description here
// You can write your code in this editor
global.t_c_discon ++
if global.t_c_discon > 1
{
global.t_c_discon = 0
}


var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)