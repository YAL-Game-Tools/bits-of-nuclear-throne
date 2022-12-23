#event properties
parent_index = prop;
uses_physics = false;

#event create
size = 0;
maxhealth = 1;
spr_idle = -1 as sprite;
spr_hurt = -1 as sprite;
spr_dead = -1 as sprite;
event_inherited();
snd_hurt = -1 as sound;
on_step = null;
on_death = null;



#event step_begin
if (sprite_index == spr_hurt) {
	if (image_index > 2) sprite_index = spr_idle;
} else sprite_index = spr_idle;
speed = 0;
if (my_health <= 0) {
	mod_refcall(on_death);
	instance_destroy_w();
} else mod_refcall(on_step);

