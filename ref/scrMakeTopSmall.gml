/// @param x
/// @param y
function scrMakeTopSmall(rx, ry) {
	if (!position_meeting(rx, ry, Floor)
	&& !position_meeting(rx, ry, Wall)
	&& !position_meeting(rx, ry, TopSmall)) {
		instance_create(rx, ry, TopSmall);
	}
}
