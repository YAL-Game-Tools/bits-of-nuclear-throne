/// `pickup_rad_attract_step` for mods
function scrRadAttract(_speed, _attraction_mode = UberCont.rad_attraction_mode) {
	if (_attraction_mode == RadAttractionMode.None) exit;
	
	var _target;
	var _target_dist = 0;
	var _target_sight = -1;
	repeat (1) {
		_target = instance_nearest(x, y, ProtoStatue);
		if (_target != noone) {
			_target_dist = distance_to_object(_target);
			if (_target_dist < 170) {
				_target_sight = collision_line(x, y, _target.x, _target.y, Wall, false, false) == noone;
				if (_target_sight && _target.my_health < _target.maxhealth * 0.7) break;
			}
		}
		
		_target = instance_nearest(x, y, EnemyHorror);
		if (_target != noone) {
			_target_dist = distance_to_object(_target);
			if (_target_dist < 170) {
				_target_sight = collision_line(x, y, _target.x, _target.y, Wall, false, false) == noone;
				if (_target_sight) break;
			}
		}
		
		_target = noone;
		var _best_dist = ALOT;
		with (Player) if (horrornorad <= 0) {
			var _dist = distance_to_object(other.id);
			var _attract_dist = calc_rad_attract_distance();
			if (_dist < _attract_dist && _dist < _best_dist) {
				_best_dist = _dist;
				_target = id;
				_target_dist = _dist;
				_target_sight = -1;
			}
		}
	}
	if (_target == noone) exit;
	
	var _tx = _target.x, _ty = _target.y;
	if (_attraction_mode != RadAttractionMode.Fast) {
		if (_target != target) {
			target = _target;
			if (_attraction_mode == RadAttractionMode.Kind) {
				var _dir = point_direction(x, y, _tx, _ty);
				var _diff = angle_difference(direction, _dir);
			} else {
				direction = point_direction(x, y, _tx, _ty);
			}
		}
		if (_attraction_mode == RadAttractionMode.Kind) {
			if (_target_dist < 18 * ft) {
				if (_target_sight == -1) {
					_target_sight = collision_line(x, y, _tx, _ty, Wall, true, false) == noone;
				}
				if (_target_sight) {
					if (_target_dist < 12 * ft) {
						x = _tx;
						y = _ty;
					} else {
						var _mult = 12 * ft / point_distance(x, y, _tx, _ty);
						x += (_tx - x) * _mult;
						y += (_ty - y) * _mult;
					}
					exit;
				}
			}
		}
		mp_potential_step_ft(_tx, _ty, 6, 0);
		mp_potential_step_ft(_tx, _ty, 6, 0);
		exit;
	}
	
	var dx = _tx - x;
	var dy = _ty - y;
	if (dx == 0 && dy == 0) exit;
	
	var _hor = abs(dx) > abs(dy);
	var _steps, _ft = ft;
	if (_ft <= 0.25) _steps = 1;
	else if (_ft <= 0.5) _steps = 2;
	else if (_ft <= 0.75) _steps = 3;
	else _steps = 4;
	var _dist = sqrt(dx*dx + dy*dy);
	
	// no sticking at lv9+!
	if (GameCont.level >= GameCont.maxlevel) {
		if (_steps > 1) {
			var dd = _speed * _ft / _dist;
			var nx = x + dx * dd;
			var ny = y + dy * dd;
			if (place_free(nx, ny)) {
				x = nx;
				y = ny;
				exit;
			}
		}
		
		var dd = (_speed / _steps) * _ft / _dist;
		dx *= dd;
		dy *= dd;
		if (_hor) {
			repeat (_steps) {
				var nx = x + dx;
				var ny = y + dy;
				if (place_free(nx, y)) x = nx;
				if (place_free(x, ny)) y = ny;
			}
		} else {
			repeat (_steps) {
				var nx = x + dx;
				var ny = y + dy;
				if (place_free(x, ny)) y = ny;
				if (place_free(nx, y)) x = nx;
			}
		}
		exit;
	}
	var dd = (_speed / _steps) * _ft / _dist;
	dx *= dd;
	dy *= dd;
	//
	if (_hor) {
		repeat (_steps) {
			var nx = x + dx;
			var ny = y + dy;
			if (place_free(nx, y)) {
				x = nx;
				if (place_free(x, ny) && (place_free(nx + dx, y) || !place_free(nx + dx, ny))) y = ny;
			} else if (place_free(x, ny) && !place_free(nx, ny)) {
				y = ny;
			} else break;
		}
	} else {
		repeat (_steps) {
			var nx = x + dx;
			var ny = y + dy;
			if (place_free(x, ny)) {
				y = ny;
				if (place_free(nx, y) && (place_free(x, ny + dy) || !place_free(nx, ny + dy))) x = nx;
			} else if (place_free(nx, y) && !place_free(nx, ny)) {
				x = nx;
			} else break;
		}
	}
}
