/// @description Insert description here
// You can write your code in this editor
if (state = PLAYERSTATE.ATTACK_SLASH_1) {
 state = PLAYERSTATE.FREE
 has_impact_sound_played = false
 sprite_index = spr_player
 if (current_slash == 1) 
 {
	current_slash = 2
 }
 else 
 {
	current_slash = 1
 }
}