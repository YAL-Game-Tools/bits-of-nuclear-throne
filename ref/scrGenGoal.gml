function scrGenGoal() {
	if (instance_exists(MenuGen)) return 60;
	switch (GameCont.area) {
		case 107: return 20;
		case 100: return 40;
		case 103: case 7: case 101: return 130;
		case 102: return 50;
		case 0: return 60;
		default: return 110;
	}
}
