function ctrOptions_mouse() : ctrOptions_base() constructor {
	/**
	Polls mouse position using display_mouse_ functions.
	This can help if your computer ceases to recognize in-game mouse movement
	until alt-tabbing away and back, but that is usually a sign of a bigger problem.
	**/
	direct = false;
	
	lock = false;
	
	cursor_mode = NativeCursorMode.Software;
	
	single_player_cursor_color = -1; /// overrides your cursor color outside of coop
	
	mouselook_div = 10; /// mouse sensitivity as per /mousesens (for mods)
}
enum NativeCursorMode {
	Software = 0,
	Native = 1,
	Compatible = 2,
}