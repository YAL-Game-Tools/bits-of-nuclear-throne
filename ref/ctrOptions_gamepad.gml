function ctrOptions_gamepad() : ctrOptions_base() constructor {
	rumble_multiplier = 1;
	
	// should the shoulder/trigger buttons let you get around the menus?
	menu_extras = !is_console;
	
	// menu controls that are intended to be non-remappable
	pause = gp_start;
	back = gp_select;
	fire = gp_face1;
	spec = gp_face2;
	swap = gp_face4;
	pick = gp_face3;
	if (is_switch) {
		fire = gp_face2;
		spec = gp_face1;
	}
	okay = cast -1 as gamepad_button;
	
	static sync = (_load) => {
		if (_load) {
			if (okay == -1) okay = fire;
		}
	}
}