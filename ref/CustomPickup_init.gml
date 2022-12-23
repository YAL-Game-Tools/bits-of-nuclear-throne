/// @interface
/// @self {CustomPickup}
function CustomPickup_init() {
	static disappear = (_pick) => {
		if (_pick) {
			with (instance_create(x, y, SmallChestPickup)) sprite_index = other.spr_pickup;
			snd_play(snd_pickup);
		} else {
			with (instance_create(x, y, SmallChestFade)) sprite_index = other.spr_fade;
			snd_play_hit(snd_disappear, 0.1);
		}
		instance_destroy_w();
	};
	on_disappear = disappear;
	
	static step = () => {
		scrShine(0.04, 0.4);
		var _target = mod_refcall(on_find_target);
		if (_target != noone) {
			mod_refcall(on_attract, _target);
		}
	};
	on_step = step;
	
	static find_target = () => {
		var _player = instance_nearest(x, y, Player);
		if (_player == noone
			|| point_distance(x, y, _player.x, _player.y) > _player.calc_pickup_attract_distance()
		) return noone;
		return _player;
	};
	on_find_target = find_target;
	
	static attract = (_target) => {
		mp_slide_step(_target.x, _target.y, attract_speed);
	};
	on_attract = attract;
}