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
	
	switch (_attraction_mode) {
		case RadAttractionMode.Fast:
			scrRadAttract_fast(_speed, _target);
			break;
		case RadAttractionMode.Kind:
			scrRadAttract_kind(_speed, _target, _target_dist, _target_sight);
			break;
		default:
			scrRadAttract_classic(_speed, _target);
			break;
	}
}
function scrRadAttract_kind(_speed, _target, _target_dist, _target_sight) {
	var _tx = _target.x, _ty = _target.y;
	if (_target_sight == -1) {
		_target_sight = collision_line(x, y, _tx, _ty, Wall, true, false) == noone;
	}
	//
	if (_target_sight) {
		var _can_see = true;
		for (var _offset = -1; _offset <= 1; _offset += 2) {
			if (collision_line(
				x + lengthdir_x(_offset, direction),
				y + lengthdir_y(_offset, direction),
				_tx + lengthdir_x(_offset, direction),
				_ty + lengthdir_y(_offset, direction),
				Wall, false, false
			) != noone) {
				_target_sight = false;
				break;
			}
		}
	}
	// we can clip through corners if we're close enough
	if (_target_dist < 18 * ft && _target_sight) {
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
	if (ft <= 0.5) {
		var _ox = x, _oy = y;
		mp_potential_step_ft(_tx, _ty, _speed, 0);
		if (x == _ox && y == _oy) {
			//trace("stuck?", _target_sight, collision_line(x, y - 1, _tx, _ty - 1, Wall, true, false) == noone, speed, direction);
			direction = random_w(360);
		}
	} else {
		mp_potential_step_ft(_tx, _ty, _speed/2, 0);
		mp_potential_step_ft(_tx, _ty, _speed/2, 0);
	}
}
function scrRadAttract_classic(_speed, _target) {
	var _tx = _target.x, _ty = _target.y;
	target = _target;
	direction = point_direction(x, y, _tx, _ty);
	mp_potential_step_ft(_tx, _ty, _speed/2, 0);
	mp_potential_step_ft(_tx, _ty, _speed/2, 0);
}
function scrRadAttract_fast(_speed, _target) {
	var _tx = _target.x, _ty = _target.y;
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