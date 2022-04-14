/// @description Insert description here
// You can write your code in this editor

if (deflected == true)
{
	show_debug_message("is deflected from gattling gun")
	with(other)
	{
		hp -= 3;
	}
	instance_destroy(self)
}
