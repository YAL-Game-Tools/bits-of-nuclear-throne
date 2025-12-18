/// @description  scrPopulate
/// @self {GenCont}
function scrPopulate() {
	var i, k, c, z, q, _x, _y;
	var _area = GameCont.area;
	var _sub = GameCont.subarea;
	var _sub_count = scrAreaSize(_area);
	var _want_boss = _sub == _sub_count;
	var _spawn_dist = safedist;
	var _spawn_x = self.spawn_x;
	var _spawn_y = self.spawn_y;
	with (Floor) {
		if (random_w(10 + GameCont.hard) < GameCont.hard
			&& point_distance(x, y, _spawn_x, _spawn_y) > _spawn_dist
			&& point_distance(x, y, 10016, 10016) > _spawn_dist
			&& !mcrFloorHasChest
		) scrPopEnemies(_area);
	}
	
	//#mark Bones/etc. (around the pathways):
	if (is_number(_area)) switch (_area) {
	case 1: case 0: case 3: case 5: case 4: case 104: case 101:
		switch (_area) {
			case 1: c = 1; q = sprBones; break;
			case 0: c = 1; q = sprNightBones; break;
			case 3: c = 7; q = sprScrapDecal; break;
			case 5: c = 7; q = sprIceDecal; break;
			case 4: c = 9; q = sprCaveDecal; break;
			case 104: c = 9; q = sprInvCaveDecal; break;
			case 101: c = 9; q = sprCoral; break;
			default: c = 1; q = sprBones; break;
		}
		//
		with (Floor) if (!place_free(x - 32, y)
			&& !place_free(x + 32, y)
			&& place_free(x, y)
		) {
			for (i = -1; i <= 1; i += 2)
			for (k = 0; k <= 1; k += 1)
			if (c <= 1 || random_w(c) < 1) {
				with (instance_create(x + (1 - i) * 16, y + k * 16, Bones)) {
					image_xscale = i;
					sprite_index = q;
				}
			}
		}
		break;
	case 2: case 102: case 105:
		switch (_area) {
			case 2: q = sprSewerDecal; break;
			case 102: q = sprPizzaSewerDecal; break;
			case 105: q = sprJungleDecal; break;
			default: q = sprBones; break;
		}
		//
		with (Floor) if (!place_free(x - 32, y)
			&& !place_free(x + 32, y)
			&& place_free(x, y)
			&& random_w(10) < 1
		) {
			for (i = -1; i <= 1; i += 2) {
				with (instance_create(x + (1 - i) * 16, y + 16, Bones)) {
					image_xscale = i;
					sprite_index = q;
				}
			}
		}
	}
	random_set_seed_w(GameCont.levseed);
	with (Floor) {
		if (instance_number(enemy) < 3 + GameCont.hard / 1.5
			&& point_distance(x, y, _spawn_x, _spawn_y) > _spawn_dist
			&& point_distance(x, y, 10016, 10016) > _spawn_dist
			&& !mcrFloorHasChest
		) scrPopEnemies(_area);
		//
		if (GameCont.crown == CrownOf.Blood
			&& random_w(8 + GameCont.hard) < GameCont.hard
			&& point_distance(x, y, _spawn_x, _spawn_y) > _spawn_dist
			&& point_distance(x, y, 10016, 10016) > _spawn_dist
			&& !mcrFloorHasChest
		) scrPopEnemies(_area);
		scrPopProps(_area);
	}
	with (NOWALLSHEREPLEASE) instance_destroy_w();
	//
	random_set_seed_w(GameCont.levseed + 150000);
	repeat (2) random_skip;
	scrPopChests();
	//
	random_set_seed_w(GameCont.levseed + 140000);
	repeat (2) random_skip;
	if (_area == 1 && UberCont.showtutorial == 0) instance_create(x, y, WantBoss);
	if (_area == 5 && _want_boss) instance_create(x, y, WantLH);
	if (_area == 3 && _sub == 1) {
		var _floor = scrFindFloor((_candidate) => {
			with (_candidate) {
				if (mcrFloorHasPropOrChest) continue;
				return point_distance(x, y, 10016, 10016);
			}
			return 0;
		});
		with (_floor) {
			instance_create(x + 16, y + 16, CarVenus);
		}
	}
	
	//#mark Bandits camp chests:
	if (UberCont.showtutorial == 0) switch (_area) {
		case 1: case 2: case 3: case 4:
		case 101: case 102: case 103: case 104: case 105:
			with (WeaponChest) if (place_free(x, y)) instance_create(x, y, Bandit);
			with (RadChest) if (place_free(x, y)) instance_create(x, y, Bandit);
			with (AmmoChest) if (place_free(x, y)) instance_create(x, y, Bandit);
			break;
	}
	
	//#mark Pizza sewers:
	if (_area == 102) {
		with (enemy) instance_destroy_w();
		with (instance_furthest(10016, 10016, Floor)) {
			with (instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Turtle)) snd_dead = sndTurtleDead1;
			with (instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Turtle)) snd_dead = sndTurtleDead2;
			with (instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Turtle)) snd_dead = sndTurtleDead3;
			with (instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Turtle)) snd_dead = sndTurtleDead4;
			instance_create(x + 16, y + 16, Rat);
		}
		with (Rad) instance_destroy_w();
		with (AmmoPickup) instance_destroy_w();
		with (HPPickup) instance_destroy_w();
		with (Corpse) instance_destroy_w();
	}
	
	//#mark Pizza entrance:
	if (_area == 2 && _sub == 1) {
		with (Floor) if (sprite_index == sprFloor2 && image_index == 1 || image_index == 5) instance_create(x, y, PizzaEntrance);
		//
		do {
			with (instance_nearest(
				10016 + random_w(240) - 120,
				10016 + random_w(240) - 120,
				PizzaEntrance
			)) instance_destroy_w();
		} until (instance_number(PizzaEntrance) <= 1);
		// 
		if (instance_number(PizzaEntrance) == 0) {
			var _floor = scrFindFloor((_candidate) => {
				with (_candidate) {
					if (mcrFloorHasPropOrChest) continue;
					if (sprite_index != sprFloor2) continue;
					return point_distance(x, y, 10016, 10016);
				}
				return 0;
			});
			if (_floor == noone) _floor = scrFindFloor((_candidate) => {
				with (_candidate) {
					if (mcrFloorHasPropOrChest) continue;
					if (sprite_index != sprFloor2B) continue;
					return point_distance(x, y, 10016, 10016);
				}
				return 0;
			});
			with (_floor) {
				sprite_index = sprFloor2;
				instance_create(x, y, PizzaEntrance);
			}
		}
	}
	
	//#mark Police 'n vans:
	if (_area != 0
		&& _area != 100
		&& !(_area == 106 && _want_boss)
		&& _area != 107
		&& !(_area == 7 && _want_boss)
	) {
		repeat (scrCountRace(Race.Rogue)) instance_create(x, y, WantPopo);
		repeat (GameCont.loops) instance_create(x, y, WantPopo);
		if (GameCont.novans == 0) {
			repeat (GameCont.loops - UberCont.hardmode) instance_create(x, y, WantVan);
		}
	}
	
	//#mark Details:
	random_set_seed_w(GameCont.levseed + 110000);
	repeat (2) random_skip;
	with (Floor) if (random_w(6) < 1) {
		instance_create(x + random_w(32), y + random_w(32), Detail);
	}
	
	//#mark Loop stuff:
	if (GameCont.loops > 0) {
		random_set_seed_w(GameCont.levseed + 150000);
		repeat (2) random_skip;
		// enemy duplication:
		with (enemy) if (random_w(60) < GameCont.loops) {
			var o = object_index;
			switch (o) {
				case MaggotSpawn: continue;
				case Mimic: continue;
				case SuperMimic: continue;
				case Turtle: continue;
				case Rat: if (_area == 102) continue;
			}
			with (instance_create(x, y, PortalClear)) {
				if (distance_to_object(Player) < 100) {
					image_xscale = 0.6;
					image_yscale = 0.6;
				}
			}
			switch (o) {
				case GoldScorpion: o = Scorpion; break;
				case GoldSnowTank: o = SnowTank; break;
				case LightningCrystal: o = LaserCrystal; break;
				case BuffGator: o = Gator; break;
				case CustomEnemy:
					repeat (3 + GameCont.loops) {
						with (instance_copy(false)) {
							x += random_w(8) - 4;
							y += random_w(8) - 4;
						}
					}
					o = -1;
					break;
			}
			if (o != -1) repeat (3 + GameCont.loops) instance_create(x + random_w(8) - 4, y + random_w(8) - 4, o);
		}
		
		// frog mom:
		if (_area == 2 && _want_boss) {
			with (instance_furthest(10016, 10016, enemy)) instance_create(x, y, FrogQueen);
		}
		
		// hyper crystal:
		if ((_area == 4 || _area == 104) && _want_boss) {
			with (instance_furthest(10016, 10016, enemy)) instance_create(x, y, HyperCrystal);
		}
		
		// technomancer:
		if (_area == 6 && _want_boss) {
			with (enemy) if (distance_to_object(TechnoMancer) > 120
				&& point_distance(x, y, 10016, 10016) > 160
			) instance_create(x, y, TechnoMancer);
			
			do {
				with (instance_nearest(10016, 10016, TechnoMancer)) instance_destroy_w(id, false);
			} until (instance_number(TechnoMancer) <= 2 + GameCont.loops);
			
			with (TechnoMancer) repeat (6) {
				instance_create(x + random_w(120) - 60, y + random_w(120) - 60, PortalClear);
			}
		}
	}
	
	//#mark Jungle flower:
	if (GameCont.skill_got[Skill.LastWish] != 0 && _area == 5 && _sub == 1) {
		random_set_seed_w(GameCont.levseed + 120000);
		repeat (2) random_skip;
		with ({
			x: 10016 + random_range_w(-320, 320),
			y: 10016 + random_range_w(-320, 320),
			spawndist: _spawn_dist,
			spawn_x: _spawn_x,
			spawn_y: _spawn_y,
		}) {
			var _floor = scrFindFloor((_candidate) => {
				with (_candidate) {
					if (mcrFloorHasPropOrChest) continue;
					//if (point_distance(x, y, 10016, 10016) < other.spawndist) continue;
					if (point_distance(x, y, other.spawn_x, other.spawn_y) < 64) continue;
					return -point_distance(x, y, other.x, other.y);
				}
				return 0;
			});
			with (_floor) {
				instance_create(x + 16, y + 16, IceFlower);
			}
		}
	}
	
	//#mark mod callbacks
	if (is_string(_area)) {
		random_set_seed_w(GameCont.levseed + 130000);
		repeat (2) random_skip;
		mod_rawcall("area", _area, "area_pop_extras");
	}
	
	//
	if (GameCont.droppedsword > 0 && _area != 0 && GameCont.loops >= 1 + UberCont.hardmode) {
		repeat (GameCont.droppedsword) with (instance_create(10016, 10016, WepPickup)) {
			scrWeapons();
			wep = scrWepFind(121);
			name = scrWepName(wep);
			ammo = 50;
			type = scrWepType(wep);
			curse = 0;
			sprite_index = scrWepSprt(wep);
			move_contact_solid(random_w(360), 320);
		}
		GameCont.droppedsword = 0;
	}
}
