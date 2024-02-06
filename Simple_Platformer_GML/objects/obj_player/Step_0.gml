if (keyboard_check(vk_left)) 
{
	x += -move_speed
	image_xscale = -1
	show_debug_message("moving left")
}

if (keyboard_check(vk_right)) 
{
	x += move_speed
	image_xscale = 1
	show_debug_message("moving right")
}

if(keyboard_check(vk_up))
{
	if(instance_place(x, y + 1, obj_block))
	{
		vspeed = jump_height
		gravity = 0.25
	}	
}

if (vspeed > 12)
{
	vspeed = 12
}


