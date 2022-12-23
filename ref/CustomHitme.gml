#event properties
parent_index = hitme;
uses_physics = false;

#event create
event_inherited();
my_health = 1;
maxhealth = 1;
spr_idle = -1;
spr_walk = -1;
spr_hurt = -1;
spr_dead = -1;
spr_shadow = shd16;
snd_hurt = -1;
snd_dead = -1;
on_begin_step = null;
on_step = null;
on_end_step = null;
on_draw = null;
on_destroy = null;
on_cleanup = null;
on_hurt = null;
team = -1;
size = 1;
raddrop = 0;



#event destroy
mod_refcall(on_destroy);

#event step
event_inherited();
mod_refcall(on_step);



#event step_begin
event_inherited();
mod_refcall(on_begin_step);



#event step_end
event_inherited();
mod_refcall(on_end_step);

#event draw
if (on_draw == null) {
	draw_self_w();
} else mod_refcall(on_draw);



#event cleanup
mod_refcall(on_cleanup);

