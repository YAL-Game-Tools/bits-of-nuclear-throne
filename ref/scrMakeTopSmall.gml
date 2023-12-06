/// @param x
/// @param y
function scrMakeTopSmall(rx, ry) {
	if (!position_meeting(rx, ry, Floor)
	&& !position_meeting(rx, ry, Wall)
	&& !position_meeting(rx, ry, TopSmall)) {
		instance_create(rx, ry, TopSmall);
	}
}
function scrMakeWallIfNeeded(_x, _y) {
	if (place_meeting(_x, _y, Floor)) exit;
	if (place_meeting(_x, _y, Wall)) exit;
	instance_create(_x, _y, Wall);
}

function scrDestroyTouchingWalls() {
	var _walls = instance_place_list_auto(x, y, Wall);
	var n = ds_list_size(_walls);
	for (var i = 0; i < n; i++) with (_walls[|i]) mcrWallSelfDestruct;
	ds_list_clear(_walls);
}

global.g_FloorExplo_noInit = false;
function scrFloorExploCreate() {
	for (var i = 0; i < 64; i += 16) {
		/*
		11114
		2...4
		2.x.4
		2...4
		23333
		*/
		scrMakeTopSmall(x - 32 + i, y - 32);
		scrMakeTopSmall(x - 32, y - 16 + i);
		scrMakeTopSmall(x - 16 + i, y + 32);
		scrMakeTopSmall(x + 32, y - 32 + i);
	}
	
	scrMakeWallIfNeeded(x - 16, y);
	scrMakeWallIfNeeded(x + 16, y);
	scrMakeWallIfNeeded(x, y + 16);
	scrMakeWallIfNeeded(x, y - 16);
	scrMakeWallIfNeeded(x - 16, y + 16);
	scrMakeWallIfNeeded(x + 16, y - 16);
	scrMakeWallIfNeeded(x + 16, y + 16);
	scrMakeWallIfNeeded(x - 16, y - 16);
}

#macro mcrWallSelfDestruct { instance_destroy_w(); instance_create(x, y, FloorExplo); }
#macro mcrWallSelfDestructQueue if (!destroy_soon) { destroy_soon = true; ds_list_add(UberCont.lisDestroyWalls, id); }