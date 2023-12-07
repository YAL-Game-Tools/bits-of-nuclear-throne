/// @description  scrPopChests
function scrPopChests() {
	var q, i;
	gol = 1;
	wgol = 0;
	agol = 0;
	rgol = 0;
	if (instance_exists(Player)) {
		i = GameCont.skill_got[Skill.OpenMind];
		if (i != 0) repeat (round(i)) {
			dir = choose_w(1, 2, 3);
			if (dir == 1) wgol += sign(i);
			if (dir == 2) agol += sign(i);
			if (dir == 3) rgol += sign(i);
		}
	}
	if (GameCont.area == 100) {
		if (scrHasCrown()) {
			q = instance_furthest(10016, 10016, WeaponChest);
			if (q == noone) {
				q = instance_furthest(10016, 10016, Floor);
				with (q) instance_create(x + 16, y + 16, ProtoChest);
			} else {
				with (q) instance_create(x, y, ProtoChest);
			}
		}
		gol = 0;
		wgol = 0;
		agol = 0;
		rgol = 0;
	}
	if (GameCont.area == 0 || GameCont.area == 107 || GameCont.area == 106 && GameCont.subarea == 3) {
		gol = 0;
		wgol = 0;
		agol = 0;
		rgol = 0;
	}
	if (GameCont.area == 106 || GameCont.area == 7 && GameCont.subarea == 3) rgol = 0;
	//
	var _mod = is_string(GameCont.area);
	if (_mod) mod_rawcall("area", GameCont.area, "area_pop_chests");
	//
	if (GameCont.area != 107 && !(GameCont.area == 1 && UberCont.showtutorial == 1)) {
		while (instance_number(WeaponChest) > gol + wgol) {
			with (instance_nearest(10016 + random_w(500) - 250, 10016 + random_w(500) - 250, WeaponChest)) instance_destroy_w();
		}
	}
	//
	if (!_mod) with (RadChest) if (point_distance(x, y, 10016, 10016) < 150) instance_destroy_w();
	while (instance_number(RadChest) > gol + rgol) {
		with (instance_nearest(10016 + random_w(500) - 250, 10016 + random_w(500) - 250, RadChest)) instance_destroy_w();
	}
	if (!(GameCont.area == 7 && GameCont.subarea == 3)
		&& !scrAreaSecret(GameCont.area)
		&& GameCont.area != 0
	) repeat (gol + rgol - instance_number(RadChest)) {
		with (instance_furthest(10016, 10016, Floor)) {
			with ({
				x: x + random_range_w(-250, 250),
				y: y + random_range_w(-250, 250),
			}) {
				var _floor = scrFindFloor((_candidate) => {
					with (_candidate) {
						if (mcrFloorHasPropOrChest) continue;
						return -point_distance(x, y, other.x, other.y);
					}
				});
				with (_floor) {
					instance_create(bbox_cx, bbox_cy, RadChest);
				}
			}
		}
	}
	//
	if (!(GameCont.area == 1 && UberCont.showtutorial == 1)) {
		while (instance_number(AmmoChest) > gol + agol) {
			with (instance_nearest(10016 + random_w(500) - 250, 10016 + random_w(500) - 250, AmmoChest)) instance_destroy_w();
		}
	}
	if (instance_exists(HealthChest)) {
		while (instance_number(HealthChest) > gol + rgol) {
			with (instance_nearest(10016 + random_w(500) - 250, 10016 + random_w(500) - 250, HealthChest)) instance_destroy_w();
		}
		with (RadChest) instance_destroy_w();
	}
	with (ChestOpen) instance_destroy_w();
	if (instance_exists(Player)) {
		var rogues = scrCountRace(Race.Rogue);
		if (GameCont.crown == CrownOf.Love && GameCont.area != 107) {
			if (rogues == 0) with (RadChest) {
				image_speed_set(0.4);
				instance_destroy_q();
				instance_create(x, y, AmmoChest);
			}
			with (AmmoChestMystery) {
				image_speed_set(0.4);
				instance_destroy_q();
				instance_create(x, y, AmmoChest);
			}
			with (WeaponChest) {
				image_speed_set(0.4);
				instance_destroy_q();
				instance_create(x, y, AmmoChest);
			}
			with (HealthChest) {
				image_speed_set(0.4);
				instance_destroy_q();
				instance_create(x, y, AmmoChest);
			}
		}
		//
		if (GameCont.crown == CrownOf.Luck) {
			with (enemy) if (random_w(10) < 1 && my_health <= 50) my_health -= 50;
		}
		// ammo chest mimics:
		with (AmmoChest) if (random_w(11) < 1 && (is_number(GameCont.area) && GameCont.area >= 2 || GameCont.loops >= 1) && GameCont.area != 107) {
			instance_create(x, y, Mimic);
			image_speed_set(0.4);
			instance_destroy_q();
		}
		// big weapon chests:
		with (WeaponChest) if (random_w(4) < GameCont.nochest && GameCont.area != 107) {
			with (instance_create(x, y, BigWeaponChest)) {
				curse = 0;
			}
			instance_destroy_q();
			break;
		}
		// rad chests -> health chests:
		if (GameCont.crown != CrownOf.Love) with (RadChest) {
			q = (GameCont.crown == CrownOf.Life && random_w(3) < 2)
				|| (instance_number(Player) < dp_player_count_active() && global.revmode != RevMode.Hard);
			if (!q && random_w(2) < 1) with (Player) {
				if (my_health < (maxhealth + chickendeaths) / 2) {
					q = true; break;
				}
			}
			if (q) {
				instance_create(x, y, HealthChest);
				instance_destroy_q();
				break;
			}
		}
		// health mimics:
		with (HealthChest) if (random_w(51) < 1 && (is_number(GameCont.area) && GameCont.area >= 2 || GameCont.loops >= 1)) {
			instance_create(x, y, SuperMimic);
			image_speed_set(0.4);
			instance_destroy_q();
		}
		// rogue chests:
		if (rogues > 0) {
			with (RadChest) {
				instance_create(x, y, RogueChest);
				instance_destroy_q();
			}
		}
	}
}
