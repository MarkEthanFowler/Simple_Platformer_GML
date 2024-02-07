if(instance_place(x, y, obj_ladder))
{
	if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down))
	{
		climbing = true
		vspeed = 0
		gravity = 0
		sprite_index = spr_climbing
	}
}
else
{
	climbing = false
	sprite_index = spr_player
}

if(climbing)
{
	if(keyboard_check(vk_up))
	{
		y += -climb_speed
	}
	if(keyboard_check(vk_down))
	{
		y += climb_speed
	}
	if(instance_place(x + 1, y, obj_block))
	{
		gravity = 1
		climbing = false
	}
}
else
{

	if (keyboard_check(vk_left)) 
	{
		x += -move_speed
		image_xscale = -1
	}


	if (keyboard_check(vk_right)) 
	{
		x += move_speed
		image_xscale = 1
	}


	if(keyboard_check(vk_up))
	{
		if(instance_place(x, y + 1, obj_block))
		{
			vspeed = jump_height
		}	
	}


	if(!instance_place(x, y + 1, obj_block))
	{
		gravity = 0.25
	}
	else
	{
		gravity = 0;
	}


	if (vspeed > 12)
	{
		vspeed = 12
	}
}