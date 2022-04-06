/// @description Insert description here
// You can write your code in this editor
with(other)
{	
instance_destroy();
}
var bullets = instance_create_layer(x,y,"lay_bullets", obj_enemyBullet)
with (bullets)
{
	direction = point_direction(x , y, obj_player.x, obj_player.y)
	speed = 15
}
//destroy the bullet
instance_destroy();