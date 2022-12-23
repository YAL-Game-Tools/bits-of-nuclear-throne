#event properties
parent_index = PickupBox;
mask_index = mskPickup;
uses_physics = false;

#event create
event_inherited();
friction_set(0.2);
image_speed = 0;
blink = 30;
alarm[0] = (200 + random_w(30)) / ((5 + GameCont.loops) / 5);
spr_fade = sprSmallChestFade;
spr_pickup = sprSmallChestPickup;
snd_pickup = sndAmmoPickup;
snd_disappear = sndPickupDisappear;
attract_speed = 6;
on_pickup = null;
on_step = null;
on_draw = null;
CustomPickup_init(); /// @implements


#event alarm0
if (blink < 0) {
	if (is_method(on_disappear)) on_disappear(false);
} else {
	alarm[0] = 2;
	blink -= 1;
	visible = !visible;
}


#event step
mod_refcall(on_step);

#event collision:Player
mod_refcall(on_pickup);
mod_refcall(on_disappear, true);

#event collision:Portal
if (instance_exists(Player)) {
	instance_destroy_w();
	with (Player) {
		with (other) {
			mod_refcall(on_pickup);
		}
	}
	mod_refcall(on_disappear, true);
}


#event collision:Wall
move_bounce_solid(true);
collision_rewind;


#event draw
if (on_draw != undefined) mod_refcall(on_draw); else draw_self();