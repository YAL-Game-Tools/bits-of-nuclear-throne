function scrSafeSpawns() {
	var dn = ds_grid_create(5, 4);
	var dx, dy, cx, cy;
	for (var di = 0; di < 4; di++) {
		var d = di * 90;
		dx = lengthdir_x(32, d);
		dy = lengthdir_y(32, d);
		var px = abs(lengthdir_x(32, d + 90));
		var py = abs(lengthdir_y(32, d + 90));
		//
		var _x = 0, _y = 0, n = 0, v = 0;
		do {
			_x += dx;
			_y += dy;
			n += 1;
			if (position_meeting(10016 + _x, 10016 + _y, Floor)) v = 0;
			v += 1;
		} until (collision_line(
			10016 + _x,
			10016 + _y,
			10016 + _x + dx * 10,
			10016 + _y + dy * 10,
			Floor, false, false
		) == noone && collision_rectangle(
			10016 + _x + dx - 32 - px,
			10016 + _y + dy - 32 - px,
			10016 + _x + dx + 32 + px,
			10016 + _y + dy + 32 + py,
			Floor, false, false
		) == noone);
		//
		dn[#0, di] = n;
		dn[#1, di] = d;
		dn[#2, di] = _x;
		dn[#3, di] = _y;
		//
		v = 0;
		cx = 10016 + _x;
		cy = 10016 + _y;
		repeat (n) {
			if (!position_meeting(cx, cy, Floor)) {
				v += 1;
			} else break;
			cx -= dx;
			cy -= dy;
		}
		dn[#4, di] = v + n / 100;
		//
		scrSafeSpawnDebug(cx, cy, 5);
		scrSafeSpawnDebug(10016 + _x, 10016 + _y, 4);
	}
	scrSafeSpawnDebug(10016, 10016, 3);

	//
	ds_grid_sort(dn, 4, 1);
	var n = dn[#0, 0];
	var d = dn[#1, 0];
	var _x = dn[#2, 0];
	var _y = dn[#3, 0];
	dx = lengthdir_x(32, d);
	dy = lengthdir_y(32, d);
	//
	var extra = floor(safespawn);
	_x += dx * extra;
	_y += dy * extra;
	spawn_x -= dx * (extra + 1);
	spawn_y -= dy * (extra + 1);
	n += extra;
	//
	with (Floor) { x -= _x; y -= _y; }
	with (SnowFloor) { x -= _x; y -= _y; }
	with (enemy) { x -= _x; y -= _y; }
	with (chestprop) { x -= _x; y -= _y; }
	with (prop) { x -= _x; y -= _y; }
	cx = 10000;
	cy = 10000;
	var v = 0;
	repeat (n) {
		if (!position_meeting(cx + 16, cy + 16, Floor)) {
			v += 1;
			instance_create(cx, cy, Floor);
		} else break;
		cx -= dx;
		cy -= dy;
	}
	ds_grid_destroy(dn);
}
