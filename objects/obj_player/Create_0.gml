///Initialize variables

basespd = 4;			//default movement speed
spd = 4;				//current movement speed 

weapon = 0;				//current weapon
fire_rate = 10;			//current shooting speed
uzi_ammo = 20;				//when ammo reaches zero, return to default weapon (unlimited ammo)
cooldown = 0;	


hit_by_attack = ds_list_create();
slash_speed = 2
slash_damage = 3;
current_slash = 1;

hp = 3

hit_cooldown_rate = 2;
hit_cooldown = 0;
player_hit_freeze = hit_cooldown_rate - 0.2;
flashAlpha = 0;
flashColor = c_white;

enemy_list = [obj_bat, obj_bat_projectile_death, obj_soldier, obj_gattling_gun, obj_enemyBullet]

var sword_reflect_snd_A = snd_sword_bullet_reflect_1
	
var sword_reflect_snd_B = snd_sword_bullet_reflect_2
	
var sword_reflect_snd_C = snd_sword_bullet_reflect_3
	

sword_reflect_queue = ds_queue_create()
ds_queue_enqueue(sword_reflect_queue, sword_reflect_snd_A)
ds_queue_enqueue(sword_reflect_queue, sword_reflect_snd_B)
ds_queue_enqueue(sword_reflect_queue, sword_reflect_snd_C)

has_impact_sound_played= false
sword_impact_array = [snd_sword_impact_1,snd_sword_impact_2,snd_sword_impact_3]

//able to fire again when cooldown reaches zero (based on weaponspd)
player_direction = PLAYERDIRECTION.UP
state = PLAYERSTATE.FREE;


enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH_1,
	ATTACK_COMBO,
	TAKING_DAMAGE,
	GAME_CONTROLLED,
	KNOCKED_BACK
}

enum PLAYERDIRECTION
{
	UP,
	DOWN,
	LEFT,
	RIGHT
}