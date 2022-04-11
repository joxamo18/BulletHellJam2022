if (global.gamestate == "start")
{
	return
}

switch (state)
{
	case PLAYERSTATE.FREE: player_state_free(); break;
	case PLAYERSTATE.ATTACK_SLASH_1: player_state_attack_slash_1(); break;
		
}		