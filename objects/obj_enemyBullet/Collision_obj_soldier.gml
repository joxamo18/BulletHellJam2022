/// @description Insert description here
// You can write your code in this editor

if (deflected == true)
{
	show_debug_message("is deflected")
	with(other)
	{
		hp -= 3;
	}
	instance_destroy(self)
}
