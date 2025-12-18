/// @description  scrBulletHit(hitme, damage, kb = 0, ?dir)
/// @param hitme
/// @param damage
/// @param kb = 0
/// @param ?dir
function scrBulletHit() {
	with (argument[0]) {
		var _damage = argument[1];
		var t = object_index;
		if (t == Player) {
			scrLastHit();
			_damage = scrPlayerDamageAdjust(_damage);
			total_damage_taken += _damage;
		}
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
			mod_refcall(on_hurt, _damage, kb, d);
		} else {
			my_health -= _damage;
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
