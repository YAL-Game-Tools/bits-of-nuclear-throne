#event properties
parent_index = projectile;
uses_physics = false;

#event create
event_inherited();
on_wall = null;
on_hit = null;
on_anim = null;
on_draw = null;
on_step = null;
on_begin_step = null;
on_end_step = null;
on_destroy = null;
on_cleanup = null;



#event destroy
mod_refcall(on_destroy);

#event step
mod_refcall(on_step);



#event step_begin
mod_refcall(on_begin_step);



#event step_end
mod_refcall(on_end_step);



#event collision:hitme
if (team != other.team) {
	if (on_hit != null) {
		mod_refcall(on_hit);
	} else if (scrBulletCanHit(other)) {
		scrBulletHit(other, damage, force);
		instance_destroy_w();
	}
}



#event collision:Wall
if (on_wall != null) {
	mod_refcall(on_wall);
} else instance_destroy_w();



#event other_animation_end
mod_refcall(on_anim);



#event draw
if (on_draw == null) {
	draw_self_w();
} else mod_refcall(on_draw);



#event cleanup
mod_refcall(on_cleanup);

