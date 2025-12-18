/// @description  scrMakeFloor
function scrMakeFloor() {
	x += lengthdir_x(32, direction);
	y += lengthdir_y(32, direction);
	var _area = GameCont.area;
	var _mod = is_string(_area);
	if (is_string(_area)) {
		mod_rawcall("area", _area, "area_make_floor");
		exit;
	}
	// create actual floors:
	switch (_area) {
	case 1:
		if (random_w(2) < 1) {
			instance_create(x, y, Floor);
			instance_create(x + 32, y, Floor);
			instance_create(x + 32, y + 32, Floor);
			instance_create(x, y + 32, Floor);
		} else instance_create(x, y, Floor);
		break;
	case 3:
		var _boss = scrAreaWantBoss();
		if (random_w(8) < 1 || _boss) {
			if (_boss) {
				xoff = choose_w(32, 0, 0, -32);
				yoff = choose_w(32, 0, 0, -32);
			} else {
				xoff = 0;
				yoff = 0;
			}
			instance_create(x + xoff, y + yoff, Floor);
			instance_create(x + xoff + 32, y + yoff, Floor);
			instance_create(x + xoff + 32, y + yoff + 32, Floor);
			instance_create(x + xoff, y + yoff + 32, Floor);
			instance_create(x + xoff, y + yoff - 32, Floor);
			instance_create(x + xoff - 32, y + yoff, Floor);
			instance_create(x + xoff + 32, y + yoff - 32, Floor);
			instance_create(x + xoff - 32, y + yoff - 32, Floor);
			instance_create(x + xoff - 32, y + yoff + 32, Floor);
		} else instance_create(x, y, Floor);
		break;
	case 5:
		if (random_w(11) < 1) {
			if (random_w(2) < 1) {
				instance_create(x + 32, y, Floor);
				instance_create(x + 32, y + 32, Floor);
				instance_create(x, y + 32, Floor);
				instance_create(x, y - 32, Floor);
				instance_create(x - 32, y, Floor);
				instance_create(x + 32, y - 32, Floor);
				instance_create(x - 32, y - 32, Floor);
				instance_create(x - 32, y + 32, Floor);
			} else {
				instance_create(x + 64, y - 64, Floor);
				instance_create(x + 64, y - 32, Floor);
				instance_create(x + 64, y, Floor);
				instance_create(x + 64, y + 32, Floor);
				instance_create(x + 64, y + 64, Floor);
				instance_create(x - 64, y - 64, Floor);
				instance_create(x - 64, y - 32, Floor);
				instance_create(x - 64, y, Floor);
				instance_create(x - 64, y + 32, Floor);
				instance_create(x - 64, y + 64, Floor);
				instance_create(x, y - 64, Floor);
				instance_create(x - 32, y - 64, Floor);
				instance_create(x + 32, y - 64, Floor);
				instance_create(x, y + 64, Floor);
				instance_create(x - 32, y + 64, Floor);
				instance_create(x + 32, y + 64, Floor);
			}
		} else instance_create(x, y, Floor);
		break;
	case 7:
		if (random_w(16) < 1) {
			dix = -32;
			diy = -32;
			repeat (4) {
				repeat (4) {
					instance_create(x + dix, y + diy, Floor);
					dix += 32;
				}
				dix = -32;
				diy += 32;
			}
		} else {
			instance_create(x, y, Floor);
			instance_create(x + 32, y, Floor);
			instance_create(x + 32, y + 32, Floor);
			instance_create(x, y + 32, Floor);
		}
		break;
	case 100:
		if (random_w(8) < 1) {
			dir = choose_w(1, 2);
			if (dir == 1) {
				instance_create(x + 32, y, Floor);
				instance_create(x + 64, y, Floor);
				instance_create(x, y, Floor);
				instance_create(x - 32, y, Floor);
				instance_create(x - 64, y, Floor);
			} else {
				instance_create(x, y + 32, Floor);
				instance_create(x, y + 64, Floor);
				instance_create(x, y, Floor);
				instance_create(x, y - 32, Floor);
				instance_create(x, y - 64, Floor);
			}
		} else instance_create(x, y, Floor);
		break;
	case 103: case 107:
		if (round(instance_number(Floor) / 12) == instance_number(Floor) / 12 && instance_number(Floor) != 0) {
			x += lengthdir_x(32, direction);
			y += lengthdir_y(32, direction);
			instance_create(x + 32, y, Floor);
			instance_create(x + 32, y + 32, Floor);
			instance_create(x, y + 32, Floor);
			instance_create(x, y - 32, Floor);
			instance_create(x - 32, y, Floor);
			instance_create(x + 32, y - 32, Floor);
			instance_create(x - 32, y - 32, Floor);
			instance_create(x - 32, y + 32, Floor);
		} else instance_create(x, y, Floor);
		break;
	case 106:
		if (round(instance_number(Floor) / 8) == instance_number(Floor) / 8 && instance_number(Floor) != 0) {
			x += lengthdir_x(64, direction);
			y += lengthdir_y(64, direction);
			instance_create(x - 64, y - 64, Floor);
			instance_create(x - 64, y - 32, Floor);
			instance_create(x - 64, y, Floor);
			instance_create(x - 64, y + 32, Floor);
			instance_create(x - 64, y + 64, Floor);
			instance_create(x + 64, y - 64, Floor);
			instance_create(x + 64, y - 32, Floor);
			instance_create(x + 64, y, Floor);
			instance_create(x + 64, y + 32, Floor);
			instance_create(x + 64, y + 64, Floor);
			instance_create(x - 32, y + 64, Floor);
			instance_create(x, y + 64, Floor);
			instance_create(x + 32, y + 64, Floor);
			instance_create(x - 32, y - 64, Floor);
			instance_create(x, y - 64, Floor);
			instance_create(x + 32, y - 64, Floor);
			x += lengthdir_x(64, direction);
			y += lengthdir_y(64, direction);
		} else if (random_w(3) < 1) {
			instance_create(x + 32, y, Floor);
			instance_create(x + 32, y + 32, Floor);
			instance_create(x, y + 32, Floor);
			instance_create(x, y - 32, Floor);
			instance_create(x - 32, y, Floor);
			instance_create(x + 32, y - 32, Floor);
			instance_create(x - 32, y - 32, Floor);
			instance_create(x - 32, y + 32, Floor);
		} else {
			repeat (4) {
				instance_create(x, y, Floor);
				x += lengthdir_x(32, direction);
				y += lengthdir_y(32, direction);
				instance_create(x, y, Floor);
				instance_create(x + 16, y + 16, AmmoChest);
			}
			if (random_w(3) < 1) {
				instance_create(x + 32, y, Floor);
				instance_create(x + 32, y + 32, Floor);
				instance_create(x, y + 32, Floor);
				instance_create(x, y - 32, Floor);
				instance_create(x - 32, y, Floor);
				instance_create(x + 32, y - 32, Floor);
				instance_create(x - 32, y - 32, Floor);
				instance_create(x - 32, y + 32, Floor);
			}
		}
		break;
	case 101:
		instance_create(x, y, Floor);
		if (random_w(3) < 1) {
			instance_create(x - 32, y, Floor);
			instance_create(x + 32, y, Floor);
			instance_create(x, y - 32, Floor);
			instance_create(x, y + 32, Floor);
		}
		break;
	case 104:
		if (instance_number(Floor) < 4) {
			instance_create(x - 32, y, Floor);
			instance_create(x - 32, y - 32, Floor);
			instance_create(x - 32, y + 32, Floor);
			instance_create(x + 32, y, Floor);
			instance_create(x + 32, y - 32, Floor);
			instance_create(x + 32, y + 32, Floor);
			instance_create(x, y + 32, Floor);
			instance_create(x, y - 32, Floor);
		}
		x += choose_w(64, -64);
		y += choose_w(64, -64);
		instance_create(x - 32, y, Floor);
		instance_create(x - 32, y - 32, Floor);
		instance_create(x - 32, y + 32, Floor);
		instance_create(x + 32, y, Floor);
		instance_create(x + 32, y - 32, Floor);
		instance_create(x + 32, y + 32, Floor);
		instance_create(x, y + 32, Floor);
		instance_create(x, y - 32, Floor);
		break;
	case 105:
		if (random_w(4) < 1) {
			instance_create(x, y, Floor);
			instance_create(x + 32, y, Floor);
			instance_create(x + 32, y + 32, Floor);
			instance_create(x, y + 32, Floor);
		} else instance_create(x, y, Floor);
		break;
	default: instance_create(x, y, Floor);
	} // switch (_area)

	// turn:
	switch (_area) {
		case 0: trn = choose_w(0, 90, -90, 90, -90, 180); break;
		case 2: trn = choose_w(0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 90, -90, 180); break;
		case 102: trn = choose_w(0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 90, -90, 180); break;
		case 3: trn = choose_w(0, 0, 0, 0, 90, -90); break;
		case 4: trn = choose_w(0, 0, 0, 0, 90, -90, 180); break;
		case 5: trn = choose_w(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 180, 180, choose_w(90, -90)); break;
		case 6: trn = choose_w(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 180); break;
		case 7: trn = choose_w(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 180); break;
		case 100: trn = choose_w(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 180, 180); break;
		case 101: trn = choose_w(0, 0, 0, 90, -90, 90, -90, 180); break;
		case 103: trn = choose_w(0, 0, 0, 90, -90, 180); break;
		case 105: trn = choose_w(0, 0, 0, 0, 0, 90, -90, 90, -90, 180); break;
		case 106: trn = choose_w(0, 90, -90, 90, -90, 180); break;
		default: trn = choose_w(0, 0, 0, 0, 0, 0, 0, 0, 0, 90, -90, 90, -90, 180);
	}
	direction += trn;
	//
	if (abs(trn) == 90 && _area == 6 && random_w(2) < 1) {
		instance_create(x + 32, y, Floor);
		instance_create(x + 32, y + 32, Floor);
		instance_create(x, y + 32, Floor);
		instance_create(x, y - 32, Floor);
		instance_create(x - 32, y, Floor);
		instance_create(x + 32, y - 32, Floor);
		instance_create(x - 32, y - 32, Floor);
		instance_create(x - 32, y + 32, Floor);
		if (random_w(3) < 1) {
			if (random_w(4) < 3) instance_create(x - 16, y - 16, Server);
			if (random_w(4) < 3) instance_create(x - 16 + 64, y - 16, Server);
			if (random_w(4) < 3) instance_create(x - 16, y - 16 + 64, Server);
			if (random_w(4) < 3) instance_create(x - 16 + 64, y - 16 + 64, Server);
		}
	}
	if ((trn == 180 || abs(trn) == 90 && (_area == 3 || _area == 104)) && point_distance(x, y, 10016, 10016) > 48) {
		instance_create(x, y, Floor);
		if (_area != 107 && _area != 0) instance_create(x + 16, y + 16, WeaponChest);
	}
	//
	switch (_area) {
	case 0:
		if (random_w(19 + instance_number(FloorMaker)) > 22) {
			instance_destroy_w();
			if (point_distance(x, y, 10016, 10016) > 48) {
				//instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
		}
		if (random_w(4) < 1) instance_create(x, y, FloorMaker);
		break;
	case 106:
		if (random_w(10) < 1) {
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
		}
		if (instance_number(Floor) > instance_number(FloorMaker) * 28) instance_create(x, y, FloorMaker);
		break;
	case 1: case 101:
		if (random_w(19 + instance_number(FloorMaker)) > 20) {
			instance_destroy_w();
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
		}
		if (random_w(8) < 1) instance_create(x, y, FloorMaker);
		break;
	case 2:
		if (random_w(14 + instance_number(FloorMaker)) > 15) {
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
			instance_destroy_w();
		}
		if (random_w(15) < 1) instance_create(x, y, FloorMaker);
		break;
	case 3:
		if (random_w(39 + instance_number(FloorMaker)) > 40) {
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
			instance_destroy_w();
		}
		if (random_w(25) < 1) instance_create(x, y, FloorMaker);
		break;
	case 4: case 104:
		if (_area == 104 && random_w(4) >= 1) break;
		if (random_w(9 + instance_number(FloorMaker)) > 10) {
			instance_destroy_w();
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
		}
		if (random_w(4) < 1) instance_create(x, y, FloorMaker);
		break;
	case 5:
		if (random_w(14 + instance_number(FloorMaker)) > 15) {
			instance_destroy_w();
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x, y, Floor);
				instance_create(x + 16, y + 16, AmmoChest);
			}
		}
		if (random_w(15) < 1) instance_create(x, y, FloorMaker);
		break;
	case 6:
		if (random_w(21 + instance_number(FloorMaker)) > 22) {
			instance_destroy_w();
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x, y, Floor);
				instance_create(x + 16, y + 16, AmmoChest);
			}
		}
		if (random_w(20) < 1) instance_create(x, y, FloorMaker);
		break;
	case 7: case 102:
		if (_area == 7) {
			if (random_w(8 + instance_number(FloorMaker)) > 9) {
				instance_destroy_w();
				if (point_distance(x, y, 10016, 10016) > 48) {
					instance_create(x + 16, y + 16, AmmoChest);
					instance_create(x, y, Floor);
				}
			}
			if (random_w(16) < 1) instance_create(x, y, FloorMaker);
		}
		//
		if (random_w(9 + instance_number(FloorMaker)) > 10) {
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
			instance_destroy_w();
		}
		if (random_w(5) < 1) instance_create(x, y, FloorMaker);
		break;
	case 103: case 107:
		if (random_w(31 + instance_number(FloorMaker)) > 32) {
			instance_destroy_w();
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x, y, Floor);
				instance_create(x + 16, y + 16, AmmoChest);
			}
		}
		if (random_w(20) < 1) instance_create(x, y, FloorMaker);
		break;
	}
	if (_area == 101 || _area == 105) {
		if (random_w(19 + instance_number(FloorMaker)) > 20) {
			instance_destroy_w();
			if (point_distance(x, y, 10016, 10016) > 48) {
				instance_create(x + 16, y + 16, AmmoChest);
				instance_create(x, y, Floor);
			}
		}
		if (random_w(14) < 1) instance_create(x, y, FloorMaker);
	}
}
