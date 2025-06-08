#event properties
parent_index = chestprop;
uses_physics = false;

#event create
event_inherited();
on_anim = null;
on_draw = null;
on_step = null;
on_begin_step = null;
on_end_step = null;
on_destroy = null;
on_cleanup = null;
on_open = null;
can_hatred = true;

#event destroy
mod_refcall(on_destroy);

#event cleanup
mod_refcall(on_cleanup);

#event other_animation_end
mod_refcall(on_anim);

#event other_user4
mod_refcall(on_begin_step);

#event other_user5
mod_refcall(on_step);

#event other_user6
mod_refcall(on_end_step);

#event collision:Player
if instance_exists(GenCont) exit;
if (can_hatred) scrChestHatred();
mod_refcall(on_open);

#event collision:PortalShock
mod_refcall(on_open);

#event draw
if (on_draw == null) {
	draw_self_w();
} else mod_refcall(on_draw);
