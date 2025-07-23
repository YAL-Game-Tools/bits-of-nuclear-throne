function snd_play_hit(_sound, _pitch_spread, _play = true) {
	if (_sound >= 0 && _sound <= cast sound_max) {
		_sound = global.sound_remap[_sound];
	}
	if (!audio_exists(_sound)) return -1;
	
	var _pitch_random = random_ns(1);
	if (!_play) return -1;
	
	// have we already [re-]started this sound on this frame?
	var _result = global.soundPlayed[?_sound];
	if (_result != undefined) return _result;
	
	//
	var _listener = scrNearestListener(), rx, ry;
	if (_listener != noone) {
		rx = _listener.x;
		ry = _listener.y;
	} else {
		rx = camera_xview + camera_wview / 2;
		ry = camera_yview + camera_hview / 2;
	}
	
	//
	audio_stop_sound(_sound);
	if (UberCont.opt_sond2d) {
		_result = audio_play_sound(_sound, 0, 0);
		var _dist_mult = 1 / (1 + (point_distance(x, y, rx, ry) / 64));
		audio_sound_gain(_result, UberCont.mainvol * clamp(_dist_mult, 0.1, 1), 0);
	} else {
		var dx = rx - x, dy = ry - y;
		if (dx == 0 && dy == 0) dy = -0.01;
		var dd = point_distance(dx, dy, 0, 0);
		var _dist_mult = min(1, dd / 64);
		_result = audio_play_sound_at(_sound, dx, dy, 0, 64 * _dist_mult, 320 * _dist_mult, 1, 0, 0);
		audio_sound_gain(_result, UberCont.mainvol, 0);
	}
	audio_sound_pitch(_result, 1 + (_pitch_random - .5) * _pitch_spread);
	global.soundPlayed[?_sound] = _result;
	//
	return _result;
}
