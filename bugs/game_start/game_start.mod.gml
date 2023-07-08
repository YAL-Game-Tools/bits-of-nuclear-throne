#define game_start
/*
/load test/test/mod
*/
GameCont.area = 3;
GameCont.subarea = 2;
trace(GameCont.area, GameCont.subarea, instance_number(GameCont))
with (GameCont) {
	trace(area, subarea);
}