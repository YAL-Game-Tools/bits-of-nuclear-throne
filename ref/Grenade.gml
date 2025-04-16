#event properties
parent_index = projectile;
sprite_index = sprGrenade;
uses_physics = false;

#event create
event_inherited();
friction_set(0.1);
alarm[1] = 6;
alarm[0] = 60;
offx = random_w(2) - 1;
offy = random_w(2) - 1;
typ = 1;
sticky = 0;
alarm[2] = 50;
damage = 15;
force = 10;



#event destroy
if (sticky == 1) {
	snd_play_hit_big(sndExplosionL, 0.2);
	var ang = random_w(360);
	repeat (3) {
		with (instance_create(x + lengthdir_x(16, ang), y + lengthdir_y(16, ang), Explosion)) {
			hitid = 55;
			creator_projectile = other.id;
			ang += 120;
		}
	}
	repeat (3) with (instance_create(x + random_w(12) - 6, y + random_w(12) - 6, SmallExplosion)) hitid = 56;
} else {
	snd_play_hit_big(sndExplosion, 0.2);
	with (instance_create(x, y, Explosion)) hitid = 55;
}



#event alarm0
instance_destroy_w();



#event alarm1
friction_set(0.4);
repeat (4) with (instance_create(x, y, Smoke)) motion_add_ft(random_w(360), random_w(2));
if (sticky == 1) depth = -3;



#event alarm2
sprite_index = sprGrenadeBlink;
image_speed_set(0.4);



#event collision:Explosion
if (team != other.team) instance_destroy_w();



#event collision:Wall
if (sticky == 1) {
	snd_play_hit(sndGrenadeStickWall, 0.1);
	if (speed > 0) instance_create(x, y, Dust);
	speed = 0;
	move_contact_solid(direction, 12);
} else {
	if (speed > 1*ft) snd_play_hit(sndGrenadeHitWall, 0.2);
	move_bounce_solid(1);
	speed *= 0.6;
	instance_create(x, y, Dust);
}



#event collision:hitme
if (other.team != team) {
	if (sticky == 1) {
		if (speed > 0) snd_play(sndGrenadeStickWall);
		speed = 0;
		x = other.x + offx;
		y = other.y + offy;
	} else {
		scrBulletHit(other, damage, force);
		instance_destroy_w();
	}
}



#event other_user5
if (sprite_index == sprGoldGrenade && chance_ft(1, 10)) instance_create(x + random_w(4) - 2, y + random_w(4) - 2, CaveSparkle);

