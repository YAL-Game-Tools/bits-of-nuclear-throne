function ctrOptions_video() : ctrOptions_base() constructor {
	// display
	vsync = false;
	fullscreen = false;
	borderless_fullscreen = true;
	window_scale = 0; /// 0 for auto
	// performance
	resolution_scale = 1;
	draw_portals = true;
	//
	screenshake = 1.0;
	freeze_frames = 1.0;
	
	/// @returns {number}
	static get_max_window_scale = () => {
		var w = view_wport[0], h = view_hport[0];
		var _safe_pad = 40;
		var dw = display_get_width() - _safe_pad;
		var dh = display_get_height() - _safe_pad;
		return max(1, floor(min(dw / w, dh / h)));
	}
	
	static sync = (o) => {
		if o UberCont.opt_fulscrn = fullscreen;
		else fullscreen = UberCont.opt_fulscrn;
		
		if o UberCont.opt_shake = screenshake;
		else screenshake = UberCont.opt_shake;
		
		if o UberCont.opt_freeze = freeze_frames;
		else freeze_frames = UberCont.opt_freeze;
	}
}