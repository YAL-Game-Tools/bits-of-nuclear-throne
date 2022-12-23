#event properties
parent_index = CustomProjectile;
uses_physics = false;

#event create
event_inherited();
typ = 0;
candeflect = true; /// if set to false, destroys projectiles/grenades like a Shank
on_grenade = null;
on_projectile = null;



#event collision:projectile
if (team != other.team) {
	if (on_projectile != null) {
		mod_refcall(on_projectile);
	} else if (candeflect) {
		if (other.typ == 1) {
			other.deflected = 1;
			other.team = team;
			other.direction = image_angle;
			other.image_angle = other.direction;
			with (instance_create(other.x, other.y, Deflect)) image_angle = other.direction;
		}
		if (other.typ == 2) with (other) instance_destroy_w();
	} else {
		if (other.typ == 2 || other.typ == 1) with (other) instance_destroy_w();
	}
}



#event collision:Grenade
if (on_grenade != null) {
	mod_refcall(on_grenade);
} else if (candeflect) {
	with (other) {
		deflected = 1;
		direction = other.direction;
		speed_set(12);
		friction_set(0.1);
		alarm[1] = 6;
		Sleep(10);
		scrShakeAt(x, y, 3);
		with (instance_create(x, y, Deflect)) image_angle = other.direction;
	}
} else {
	with (other) {
		instance_destroy_w();
		Sleep(40);
		scrShakeAt(x, y, 3);
	}
}



#event collision:Wall
if (on_wall != null) {
	mod_refcall(on_wall);
} else {
	x -= hspeed;
	y -= vspeed;
}



#event other_animation_end
if (on_anim != null) {
	mod_refcall(on_anim);
} else instance_destroy_w();

