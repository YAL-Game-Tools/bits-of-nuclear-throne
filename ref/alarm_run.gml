function alarm_run(_alarm) {
	var _num = alarm_get(_alarm);
	if(_num >= 0) {
		alarm_set(_alarm, --_num);
		return (_num == 0);
	}
	return false;
}