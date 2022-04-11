// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	//Move in four directions when pressing arrow keys.
	if (keyboard_check(ord("A")))	x-= spd;
	if (keyboard_check(ord("D")))	x+= spd;
	if (keyboard_check(ord("W")))		y-= spd;
	if (keyboard_check(ord("S")))	y+= spd;
	
		//Change player direction state
	if (keyboard_check(ord("A")))	player_direction = PLAYERDIRECTION.LEFT;
	if (keyboard_check(ord("D")))	player_direction = PLAYERDIRECTION.RIGHT;
	if (keyboard_check(ord("W")))	player_direction = PLAYERDIRECTION.UP;
	if (keyboard_check(ord("S")))	player_direction = PLAYERDIRECTION.DOWN;
}