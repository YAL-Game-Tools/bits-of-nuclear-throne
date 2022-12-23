/// @param x
/// @param y
function scrMakeTopSmalls(rx, ry) {
	var i = 0;
	repeat (4) {
		if (!position_meeting(rx, ry, Floor)
		&& !position_meeting(rx, ry, Wall)
		&& !position_meeting(rx, ry, TopSmall)) {
			instance_create(rx, ry, TopSmall);
		}
		if (++i % 2 == 1) {
			rx += 16;
		} else {
			rx -= 16;
			ry += 16;
		}
	}
}
