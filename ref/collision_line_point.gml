function collision_line_point(x1, y1, x2, y2, _obj, _prec, _notme, _out)  {
	var rr = collision_line(x1, y1, x2, y2, _obj, _prec, _notme);
	var rx = x2;
	var ry = y2;
	if (rr != noone) {
		var p0 = 0;
		var p1 = 1;
		repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
			var np = p0 + (p1 - p0) * 0.5;
			var nx = x1 + (x2 - x1) * np;
			var ny = y1 + (y2 - y1) * np;
			var px = x1 + (x2 - x1) * p0;
			var py = y1 + (y2 - y1) * p0;
			var nr = collision_line(px, py, nx, ny, _obj, _prec, _notme);
			if (nr != noone) {
				rr = nr;
				rx = nx;
				ry = ny;
				p1 = np;
			} else p0 = np;
		}
	}
	if (_out == undefined) return { inst: rr, x: rx, y: ry };
	_out.inst = rr;
	_out.x = rx;
	_out.y = ry;
	return _out;
}
function collision_line_point_auto(x1, y1, x2, y2, qi, qp, qn) {
	static result = { x: 0, y: 0, inst: noone }
	return collision_line_point(x1, y1, x2, y2, qi, qp, qn, result);
}