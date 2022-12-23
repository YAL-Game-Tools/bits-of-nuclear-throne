#event properties
parent_index = enemy;
uses_physics = false;

#event create
raddrop = 0;
maxhealth = 1;
__maxhealth_init = true;
meleedamage = 0;
size = 0;
hitid = -1;
spr_idle = -1;
spr_walk = -1;
spr_hurt = -1;
spr_dead = -1;
spr_shadow = shd16;
event_inherited();
on_destroy = null;
on_cleanup = null;
on_step = null;
on_begin_step = null;
on_end_step = null;
on_draw = null;
on_hurt = null;
on_death = null;
candie = true;



#event destroy
mod_refcall(on_destroy);
event_inherited();

#event step
// from Enemy:
if (candie && my_health <= 0) {
	mod_refcall(on_death);
	instance_destroy_w();
	exit;
}
if (wkick != 0) wkick = approach(wkick, 0, ft);
scrTarget();
mod_refcall(on_step);



#event step_begin
mod_refcall(on_begin_step);



#event step_end
mod_refcall(on_end_step);


#event draw
if (on_draw == null) {
	var q = sprite_index;
	if (sprite_exists(q)) {
		var t = nexthurt - current_frame;
		if (t > 0) {
			q = spr_hurt;
			if (sprite_exists(q)) {
				draw_sprite_ext(q, t / 8 * sprite_get_number(q), x, y,
					image_xscale, image_yscale, image_angle, image_blend, image_alpha)
			}
		} else draw_sprite_ext(q, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	}
} else mod_refcall(on_draw);



#event cleanup
mod_refcall(on_cleanup);

