if (global.gamestate == "start")
{
	return
}

if (hp == 0)
{
	instance_destroy()
}

switch (state)
{
	case PLAYERSTATE.GAME_CONTROLLED: break;
	case PLAYERSTATE.ATTACK_SLASH_1: player_state_attack_slash_1(); break;
	case PLAYERSTATE.TAKING_DAMAGE: player_state_taking_damage() break;
	case PLAYERSTATE.FREE: player_state_free(); break
}		