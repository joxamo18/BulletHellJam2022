///Initialize variables

basespd = 4;			//default movement speed
spd = 4;				//current movement speed 
weapon = 0;				//current weapon
fire_rate = 10;			//current shooting speed
uzi_ammo = 20;				//when ammo reaches zero, return to default weapon (unlimited ammo)
cooldown = 0;			//able to fire again when cooldown reaches zero (based on weaponspd)
player_direction = PLAYERDIRECTION.UP
state = PLAYERSTATE.FREE;
hit_by_attack = ds_list_create();
slash_speed = 2
hp = 3

enemy_list = [obj_bat, obj_bat_projectile_death, obj_soldier, obj_gattling_gun]

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH_1,
	ATTACK_COMBO
}

enum PLAYERDIRECTION
{
	UP,
	DOWN,
	LEFT,
	RIGHT
}