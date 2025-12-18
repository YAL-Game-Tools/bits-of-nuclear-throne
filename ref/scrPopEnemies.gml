/// @description  scrPopEnemies
/// @self {Floor}
function scrPopEnemies(_spawnarea) {
	if (is_string(_spawnarea)) {
		mod_rawcall("area", _spawnarea, "area_pop_enemies");
	} else switch (_spawnarea) {
	case 1:
		if (UberCont.showtutorial) break;
		if (GameCont.area == 0) break;
		if (random_w(2) < random_w(GameCont.loops)) {
			instance_create(x + 16, y + 16, choose_w(Scorpion, Scorpion, Bandit, Bandit, Maggot, JungleFly, JungleFly, MeleeBandit, Sniper));
		} else if (styleb == 1) {
			instance_create(x + 16, y + 16, choose_w(MaggotSpawn, BigMaggot, BigMaggot, Maggot));
		} else if (random_w(7) < 1) {
			instance_create(x + 16, y + 16, choose_w(MaggotSpawn, Scorpion));
		} else if (random_w(30) < 1) {
			instance_create(x + 16, y + 16, Barrel);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Bandit);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Bandit);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Bandit);
		} else instance_create(x + 16, y + 16, choose_w(Bandit, Bandit, Bandit, Bandit, Bandit, Bandit, Maggot, Scorpion));
		break;
	case 2:
		if (random_w(2) < random_w(GameCont.loops)) {
			instance_create(x + 16, y + 16, choose_w(Ratking, Ratking, BuffGator, LaserCrystal, Rat, Exploder, Exploder, SuperFireBaller));
		} else if (styleb == 1) {
			instance_create(x + 16, y + 16, choose_w(Rat, Rat, Gator, Gator, Exploder));
		} else if (random_w(9) < 1) {
			instance_create(x + 16, y + 16, choose_w(Exploder, Ratking, Exploder, Ratking, Exploder, Ratking, MeleeFake));
		} else instance_create(x + 16, y + 16, choose_w(Rat, Rat, Rat, Rat, Rat, Rat, Rat, Bandit));
		break;
	case 3:
		if (random_w(5) >= 4) break;
		if (scrAreaWantBoss() && random_w(2) >= 1) break;
		//
		if (random_w(2) < random_w(GameCont.loops)) {
			instance_create(x + 16, y + 16, choose_w(Sniper, Sniper, MeleeFake, MeleeFake, Salamander, SnowBot, Raven, BuffGator, Raven));
		} else if (styleb == 1 && random_w(3) < 1) {
			instance_create(x + 16, y + 16, Salamander);
		} else if (random_w(4) < 1) {
			instance_create(x + 16, y + 16, choose_w(MeleeBandit, Sniper, MeleeFake, Sniper, MeleeFake, Sniper, Sniper, Exploder));
		} else if (random_w(10) < 1) {
			if (random_w(8) < 1) instance_create(x + 16, y + 16, Car);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Raven);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, Raven);
		} else if (random_w(20) < 1) {
			instance_create(x + 16, y + 16, Salamander);
		} else if (random_w(4) < 3) instance_create(x + 16, y + 16, choose_w(Raven, Raven, Bandit));
		break;
	case 4:
		if (random_w(2) < random_w(GameCont.loops)) {
			instance_create(x + 16, y + 16, choose_w(LaserCrystal, LaserCrystal, LaserCrystal, RhinoFreak, LightningCrystal, BuffGator, ExploFreak, Spider, Spider));
		} else instance_create(x + 16, y + 16, choose_w(Spider, Spider, Spider, Spider, LaserCrystal));
		break;
	case 104:
		if (random_w(5) >= 4) break;
		instance_create(x + 16, y + 16, choose_w(InvSpider, InvSpider, InvSpider, InvSpider, InvLaserCrystal, InvLaserCrystal));
		break;
	case 5:
		if (random_w(2) < random_w(GameCont.loops)) {
			instance_create(x + 16, y + 16, choose_w(SnowTank, SnowTank, DogGuardian, ExploGuardian, SnowBot, SnowBot, SnowBot, Wolf, Necromancer));
		} else if (UberCont.xmas == 1 && random_w(1000) < 1) {
			instance_create(x + 16, y + 16, PotentialYeti);
		} else if (random_w(3) < 2) {
			instance_create(x + 16, y + 16, choose_w(SnowBot, SnowBot, SnowBot, SnowTank, Wolf, Wolf));
		}
		break;
	case 6:
		if (point_distance(x + 16, y + 16, 10016, 10016) <= 160) break;
		if (random_w(2) < random_w(GameCont.loops)) {
			instance_create(x + 16, y + 16, choose_w(Ratking, RhinoFreak, ExploFreak, Necromancer, RhinoFreak, LaserCrystal, BecomeTurret));
		} else if (random_w(14) < 1) {
			repeat (10) {
				if (random_w(16) < 3) {
					instance_create(x + 12 + random_w(8), y + 12 + random_w(8), choose_w(ExploFreak, ExploFreak, RhinoFreak));
				} else instance_create(x + 12 + random_w(8), y + 12 + random_w(8), Freak);
			}
		} else if (random_w(8) < 1) {
			instance_create(x + 16, y + 16, choose_w(Necromancer, Necromancer, Necromancer, ExploFreak, RhinoFreak, Necromancer, Necromancer, BecomeTurret, BecomeTurret, BecomeTurret, Necromancer));
		}
		break;
	case 7:
		if (scrAreaWantBoss()) break;
		if (random_w(2) >= 1) break;
		if (random_w(2) < random_w(GameCont.loops)) {
			instance_create(x + 16, y + 16, choose_w(ExploGuardian, DogGuardian, Sniper, DogGuardian, ExploGuardian, ExploFreak, JungleBandit, JungleBandit));
		} else if (random_w(4) < 1) {
			instance_create(x + 16, y + 16, choose_w(ExploGuardian, DogGuardian, Guardian, Guardian, Guardian, Guardian));
		} else if (random_w(16) < 1) instance_create(x + 16, y + 16, IDPDSpawn);
		break;
	case 102:
		//instance_create(x + 16, y + 16, Turtle);
		break;
	case 101:
		if (random_w(4) < 1) {
			instance_create(x + 16, y + 16, Crab);
		} else if (random_w(3) < 1) {
			repeat (3) instance_create(x + 14 + random_w(4), y + 14 + random_w(4), BoneFish);
		}
		break;
	case 103:
		if (random_w(5) < 1) {
			instance_create(x + 16, y + 16, choose_w(FireBaller, Jock, FireBaller, Jock, FireBaller, SuperFireBaller));
		} else if (random_w(4) < 1) {
			if (random_w(5) < 1) instance_create(x + 16, y + 16, GoldBarrel);
			repeat (3) instance_create(x + 16, y + 16, choose_w(Molefish, Molefish, Molefish, Molefish, Molesarge));
		}
		break;
	case 106:
		if (scrAreaWantBoss()) break;
		if (random_w(12) >= 1) break;
		if (random_w(7) < 1) {
			instance_create(x + 16, y + 16, choose_w(EliteGrunt, EliteShielder, EliteInspector));
		} else if (random_w(4) < 1) {
			repeat (5) instance_create(x + 16, y + 16, Grunt);
		} else if (random_w(3) < 1) {
			instance_create(x + 16, y + 16, choose_w(Grunt, Shielder, Inspector));
		}
		break;
	case 105:
		if (random_w(8) < 1) {
			instance_create(x + 16, y + 16, JungleFly);
		} else if (random_w(30) < 1) {
			instance_create(x + 16, y + 16, Barrel);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, JungleBandit);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, JungleBandit);
			instance_create(x + 16 + random_w(4) - 2, y + 16 + random_w(4) - 2, JungleBandit);
		} else {
			instance_create(x + 16, y + 16, choose_w(JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, Maggot, JungleAssassinHide, JungleAssassinHide));
		}
		break;
	}
}
