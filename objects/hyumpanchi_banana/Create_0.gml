/// @description Insert description here
// You can write your code in this editor
t_x = player.x
movement_speed = 0
cannot_move = 0
image_speed = 0
gravity = 0.2
hit_cooltime = 0
last_hit = 0
gravity_ignore = 0
hit_stand_up = 0
knocked_down_ef = 0
hit_motion = 0
can_attack = 0
if global.nickname = "우왁굳" || global.nickname = "왁굳" || global.nickname = "오영택"
{
hp = 207+(global.replay_time - 1)*180
}
else
{
hp = 307+(global.replay_time - 1)*180
}
max_hp = hp
hp_bar_alpha = 0
t_hp_bar_alpha = 0
armored_level = 1
draw_hp = 0

move_sprite = pl_move_hyumpanchi
hurt_sprite = pl_hurt_hyumpanchi
attack_sprite = pl_move_hyumpanchi_attack_based1
attack_ = 0
attack_dilay = 0
random_attack_chance = 0
attack_sound_effect = 0