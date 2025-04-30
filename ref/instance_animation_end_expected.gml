// based on cecil's scripts
function instance_animation_end_expected(_inst) {
	with (_inst) {
		if (sprite_get_speed_type(sprite_index) == spritespeed_framespergameframe) {
			return image_index + image_speed*sprite_get_speed(sprite_index) >= image_number;
		}
		return image_index + image_speed*sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps) >= image_number;
	}
	return false;
}
function instance_is_on_animation_frame(_inst, _frame) {
	with (q) {
		if (sprite_get_speed_type(sprite_index) == spritespeed_framespergameframe) {
			return (image_index >= _frame) && ((image_index - image_speed * sprite_get_speed(sprite_index)) < _frame)
		}
		return ((image_index >= _frame) && ((image_index - image_speed * sprite_get_speed(sprite_index)/(game_get_speed(gamespeed_fps)) < _frame)));
	}
	return false;
}