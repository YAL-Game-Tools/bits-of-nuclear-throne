/// @description  scrBulletHit(hitme, damage, kb = 0, ?dir)
/// @param hitme
/// @param damage
/// @param kb = 0
/// @param ?dir
function scrBulletHit() {
	with (argument[0]) {
		var t = object_index;
		if (t == Player) scrLastHit();
		//
		var d, kb;
		if (argument_count > 2) {
			kb = argument[2];
		} else kb = 0;
		if (argument_count > 3) {
			d = argument[3];
		} else d = other.direction;
		//
		if (t == CustomHitme || (t == CustomEnemy && on_hurt != null)) {
			mod_refcall(on_hurt, argument[1], kb, d);
		} else {
			my_health -= argument[1];
			//
			if (kb > 0) {
				motion_add_ft(d, kb);
				speed_min(16);
			}
			//
			scrHurt();
		}
	}
}
