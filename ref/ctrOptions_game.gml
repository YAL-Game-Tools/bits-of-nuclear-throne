function ctrOptions_game() : ctrOptions_base() constructor {
	version = 0;
	autopause = true;
	bossintros = true;
	
	//
	framerate = 60;
	width = 320;
	height = 240;
	auto_aspect = true;
	
	timer = 0; // 1: timer, 2: level, 3: both
	
	rad_attraction_mode = RadAttractionMode.Kind;
	
	static sync = (o) => {
		if o UberCont.opt_bossintros = bossintros;
		else bossintros = UberCont.opt_bossintros;
		
		if o UberCont.opt_timer = timer;
		else timer = UberCont.opt_timer;
	}
	static after_init = () => {
		var f = framerate;
		game_set_speed(f, gamespeed_fps);
		dp_framerate = f;
		ft = 30 / f;
		ft2 = ft * ft;
		// upgrades:
		if (version <= 0) {
			version = 1;
			rad_attraction_mode = RadAttractionMode.Kind;
		}
		if (version <= 1) {
			version = 2;
			auto_aspect = false;
		}
		if (version <= 2) {
			version = 3;
			if (width == game_width_21_9 && height == game_height_21_9) {
				width = 320;
				height = 240;
			}
		}
	}
}
enum RadAttractionMode {
	None = -1,
	Classic = 0,
	Fast = 2,
	Kind = 3,
	sizeof
}
