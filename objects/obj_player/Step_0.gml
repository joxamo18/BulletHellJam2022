if (global and global.gamestate == "start")
{
	return
}

if (hp <= 0)
{
	obj_game.player_death_location_x = x
	obj_game.player_death_location_y = y
	instance_destroy()
}

if (hit_cooldown > 0)
{
	player_state_taking_damage()
}

switch (state)
{
	case PLAYERSTATE.GAME_CONTROLLED: break;
	case PLAYERSTATE.ATTACK_SLASH_1: player_state_attack_slash_1(); break;
	case PLAYERSTATE.FREE: player_state_free(); break;
	case PLAYERSTATE.KNOCKED_BACK: player_state_knocked_back(); break;
}		