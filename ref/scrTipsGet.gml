function TipsStruct() constructor {
	static loadUserTips = (_array, _lf, _prefix) => {
		var i = array_length(_array) + 1;
		repeat (1024) {
			 var _str = _lf(_prefix + string(i), "");
			 if (_str == "") break;
			 array_push(_array, _str);
			 i += 1;
		}
	}
	var L = LF("Tips");
	general = [
		L("General:1", "@rHP@s will only drop when damaged"),
		L("General:2", "@yexplosives@s can destroy walls"),
		L("General:3", "@wmelee weapons@s can deflect @yprojectiles@s"),
		L("General:4", "@rHP@s will only drop when damaged"),
		L("General:5", "@yexplosives@s can destroy walls"),
		L("General:6", "@wmelee weapons@s can deflect @yprojectiles@s"),
		L("General:7", "@yshells@s deal more damage from up close"),
		L("General:8", "assassins can pretend they're dead"),
		L("General:9", "fish can roll"),
		L("General:10", "always keep one eye on your @yammo@s"),
		L("General:11", "robots can digest anything"),
		L("General:12", "bandits like camping near barrels"),
		L("General:13", "not today"),
		L("General:14", "rosebud"),
		L("General:15", "it's not fair, it's not right"),
		L("General:16", "watch out for dehydration"),
		L("General:17", "crystal can shield"),
		L("General:18", "fear is the mindkiller"),
		L("General:19", "going in big"),
		L("General:20", "it's happening"),
		L("General:21", "no"),
		L("General:22", "bob and weave"),
		L("General:23", "airhorn.wav"),
		L("General:24", "danger zone"),
		L("General:25", "the @wthrone@s is getting closer"),
		L("General:26", "what a life"),
		L("General:27", "remember to take a 15 minute break#for every hour you play!"),
		L("General:28", "so sweaty"),
		L("General:29", "just another @pportal@s"),
		L("General:30", "doing work"),
		L("General:31", "hold the phone"),
		L("General:32", "no shame"),
		L("General:33", "follow your heart"),
		L("General:34", "practice makes perfect"),
		L("General:35", "don't give up"),
		L("General:36", "the @bI.D.P.D.@s is looking for you"),
		L("General:37", "try hitting @ygrenades@s for extra range"),
		L("General:38", "pick your @gmutations@s wisely"),
		L("General:39", "if only you could talk to the monsters"),
		L("General:40", "@wsteroids@s can dual wield"),
		L("General:41", "always wear dry socks"),
		L("General:42", "@wcrowns@s are loyal"),
		L("General:43", "@yenergy weapons@s use lots of @yammo@y"),
		L("General:44", "the throne definitely exists"),
		L("General:45", "try not opening @wweapon chests@s"),
		L("General:46", "fire at things until they die"),
		L("General:47", "@yammo@s drops depend on your @wweapon types@s"),
		L("General:48", "don't get hit"),
		L("General:49", "you get fewer drops when high on @yammo@s"),
		L("General:50", "doing alright"),
		L("General:51", "there are other worlds out there"),
	];
	loadUserTips(general, L, "General:");
	
	tutorial = [
		L("Tutorial:1", "everything will be just fine"),
		L("Tutorial:2", "don't worry"),
		L("Tutorial:3", "the nuclear throne..."),
		L("Tutorial:4", "good luck")
	];
	loadUserTips(tutorial, L, "Tutorial:");
	
	daily = [
		L("Daily:1", "such a nice day"),
		L("Daily:2", "the weather isn't so bad"),
		L("Daily:3", "don't mess it up"),
		L("Daily:4", "one shot"),
		L("Daily:5", "there's always tomorrow"),
		L("Daily:6", "one day")
	];
	loadUserTips(daily, L, "Daily:");
	
	weekly = [
		L("Weekly:1", "this seems familiar"),
		L("Weekly:2", "what's next?"),
		L("Weekly:3", "free time"),
		L("Weekly:4", "well prepared"),
		L("Weekly:5", "keep trying")
	];
	loadUserTips(weekly, L, "Weekly:");
	
	var _sfmt = () => choose_w("", "", "", "", "", L("Hardmode:8", "what does SFMT stand for?"));
	_sfmt.name = "sfmt";
	hardmode = [
		L("Hardmode:1", "heh"),
		L("Hardmode:2", "no way"),
		L("Hardmode:3", "impossible"),
		L("Hardmode:4", "behind you"),
		L("Hardmode:5", "take your time"),
		L("Hardmode:6", "..."),
		L("Hardmode:7", "it can't be that bad"),
		_sfmt,
	];
	loadUserTips(hardmode, L, "Hardmode:");
	
	var _heads = () => {
		/** @locnext
			These are shown based on player count in co-op
		**/
		switch (instance_number(Player) + instance_number(Revive)) {
			case 0: return L("Coop:7", "no heads");
			case 1: return L("Coop:8", "one head");
			case 2: return L("Coop:9", "two heads");
			case 3: return L("Coop:10", "three heads");
			case 4: return L("Coop:11", "four heads");
			default: return L("Coop:12", "many heads");
		}
	};
	_heads.name = "heads";
	coop = [
		L("Coop:1", "friendship"),
		L("Coop:2", "what a burden"),
		L("Coop:3", "shouting"),
		L("Coop:4", "be careful"),
		L("Coop:5", "help is here"),
		L("Coop:6", "but who gets the throne?"),
		_heads
	];
	loadUserTips(coop, L, "Coop:");
	
	area = [
		[
			L("Area:0:1", "it's so dark"), /// @loc Campfire
			L("Area:0:2", "your friends were here"),
			L("Area:0:3", "this can't be true")
		],
		[
			L("Area:1:1", "welcome to the future"), /// @loc Desert
			L("Area:1:2", "the wasteland calls you"),
			L("Area:1:3", "scorching sun"),
			L("Area:1:4", "watch out for maggots"),
			L("Area:1:5", "let's do this"),
			L("Area:1:6", "dust surrounds you"),
			L("Area:1:7", "the wind hurts")
		],
		[
			L("Area:2:1", "don't drink the water"), /// @loc Sewers
			L("Area:2:2", "the sewers stink"),
			L("Area:2:3", "don't touch the frogs"),
			L("Area:2:4", "don't eat the rat meat"),
			L("Area:2:5", "danger"),
			L("Area:2:6", "water dripping"),
			L("Area:2:7", "sludge everywhere"),
			L("Area:2:8", "so many rats")
		],
		[
			L("Area:3:1", "shoot robots on sight"), /// @loc Scrapyard
			L("Area:3:2", "there used to be trees here"),
			L("Area:3:3", "look up"),
			L("Area:3:4", "rust everywhere"),
			L("Area:3:5", "the sound of birds"),
			L("Area:3:6", "sludge pools"),
			L("Area:3:7", "climb over cars"),
			L("Area:3:8", "portals can blow up cars")
		],
		[
			L("Area:4:1", "oh no"), /// @loc Crystal Caves
			L("Area:4:2", "spiderwebs everywhere"),
			L("Area:4:3", "don't lose your heart"),
			L("Area:4:4", "reflections on the walls"),
			L("Area:4:5", "skin is crawling"),
			L("Area:4:6", "almost halfway there")
		],
		[
			L("Area:5:1", "wear a scarf"), /// @loc Frozen City
			L("Area:5:2", "they used to have electricity"),
			L("Area:5:3", "miss the sun"),
			L("Area:5:4", "civilization"),
			L("Area:5:5", "walk softly"),
			L("Area:5:6", "there is no yeti")
		],
		[
			L("Area:6:1", "beep boop"), /// @loc Labs
			L("Area:6:2", "nerds"),
			L("Area:6:3", "don't push any buttons")
		],
		[
			L("Area:7:1", "this place is old"), /// @loc Palace
			L("Area:7:2", "the palace")
		],
	];
	for (var i = 0; i < array_length(area); i++) {
		loadUserTips(area[i], L, `Area:${i}:`);
	}
	
	secret = [
		[L("Area:100:1", "awww yes")], /// @loc Crown Vault
		[
			L("Area:101:1", "fish"), /// @loc Oasis
			L("Area:101:2", "hold your breath"),
			L("Area:101:3", "it's beautiful down here"),
			L("Area:101:4", "don't move")
		],
		[
			L("Area:102:1", "hunger..."), /// @loc Pizza Sewers
			L("Area:102:2", "it smells nice here")
		],
		[
			L("Area:103:1", "space..."), /// @loc Mansion
			L("Area:103:2", "always wanted to go here"),
			L("Area:103:3", "so much money"),
			L("Area:103:4", "4 years later...")
		],
		[
			/** @locnext
				Cursed Crystal Caves (104:X) tooltips repeat some of the Crystal Caves (4:X) tooltips, but with words in reverse order
			**/
			L("Area:104:1", "no oh"),
			L("Area:104:2", "everywhere spiderwebs"),
			L("Area:104:3", "crawling is skin"),
			L("Area:104:4", "there halfway almost")
		],
		[
			L("Area:105:1", "there's something in the trees"), /// @loc Jungle
			L("Area:105:2", "bugs everywhere"),
			L("Area:105:3", "welcome to the jungle"),
			L("Area:105:4", "heart of darkness")
		],
		[""],
		[
			L("Area:107:1", "this is where the magic happens"), /// @loc Crib
			L("Area:107:2", "lets take a look in the fridge"),
			L("Area:107:3", "get the hell out of here"),
			L("Area:107:4", "now this is real special"),
			L("Area:107:5", "wakkala wayo")
		],
	];
	for (var i = 0; i < array_length(secret); i++) {
		loadUserTips(secret[i], L, `Area:${i+100}:`);
	}
	
	race_ultra = [
		[
			L("Ultra:0:1", "random @gultra@s, unstoppable") /// @loc Random (mods only)
		],
		[
			L("Ultra:1:1", "getting used to this"), /// @loc Fish
			L("Ultra:1:2", "just one more day")
		],
		[
			L("Ultra:2:1", "just a scratch"), /// @loc Crystal
			L("Ultra:2:2", "stay strong")
		],
		[
			L("Ultra:3:1", "know everything"), /// @loc Eyes
			L("Ultra:3:2", "show nothing"), 
			L("Ultra:3:3", "keep it inside")
		],
		[
			L("Ultra:4:1", "the pain..."), /// @loc Melting
			L("Ultra:4:2", "please stop..."),
			L("Ultra:4:3", "life is incredibly beautiful"),
		],
		[
			L("Ultra:5:1", "end end end") /// @loc Plant
		],
		[
			L("Ultra:6:1", "\\#verifycuz"), /// @loc YV
			L("Ultra:6:2", "airsiren.wav"), 
			L("Ultra:6:3", "\\#blessed"), 
			L("Ultra:6:4", "one of these days..."), 
			L("Ultra:6:5", "real thugs hustle"), 
			L("Ultra:6:6", "YV fact: YV IS THE BEST"), 
			L("Ultra:6:7", "4EVER"), 
			L("Ultra:6:8", "GO HARD"), 
			L("Ultra:6:9", "VOTE 2 B COOL")
		],
		[
			L("Ultra:7:1", "let's hope this is correct"), /// @loc Steroids
			L("Ultra:7:2", "so strong")
		],
		[
			L("Ultra:8:1", "6d 61 63 68 69 6e 65 73#77 69 6c 6c#6e 65 76 65 72#65 6e 64"), /// @loc Robot, base16 for "machines will never end
			L("Ultra:8:2", "66 6c 65 73 68#69 73#77 65 61 6b"), /// @loc base16 for "flesh is weak"
			L("Ultra:8:3", "73 69 6e 67 75 6c 61 72 69 74 79"), /// @loc base16 for "singularity"
			L("Ultra:8:4", "don't panic")
		],
		[
			L("Ultra:9:1", "this is destiny"), /// @loc Chicken
			L("Ultra:9:2", "just like in the movies"), 
			L("Ultra:9:3", "again we are defeated")
		],
		[
			L("Ultra:10:1", "all together now"), /// @loc Rebel
			L("Ultra:10:2", "no stopping now")
		],
		[
			L("Ultra:11:1", "the air is changing"), /// @loc Horror
			L("Ultra:11:2", "the light moves"), 
			L("Ultra:11:3", "things are different")
		],
		[
			L("Ultra:12:1", "use this"), /// @loc Rogue
			L("Ultra:12:2", "you deserve this"), 
			L("Ultra:12:3", "they can't chase you forever")
		],
		[
			L("Ultra:13:1", "guard this land"), /// @loc Big Dog
			L("Ultra:13:2", "none will pass"), 
			L("Ultra:13:3", "fire at will")
		],
		[
			L("Ultra:14:1", "this is better"), /// @loc Skeleton
			L("Ultra:14:2", "avoid the living"), 
			L("Ultra:14:3", "no need for peace")
		],
		[
			L("Ultra:15:1", "bwahahaha"), /// @loc Frog
			L("Ultra:15:2", "singing"), 
			L("Ultra:15:3", "sweet sounds"), 
			L("Ultra:15:4", "go forever"), 
			L("Ultra:15:5", "smell great")
		],
		[
			L("Ultra:16:1", "what a good time") /// @loc Cuz (unused)
		],
	];
	for (var i = 0; i < array_length(race_ultra); i++) {
		loadUserTips(race_ultra[i], L, `Ultra:${i}:`);
	}
	
	race = [
		[
			L("Race:0:1", "random shifts shapes"), /// @loc Random (mods only)
			L("Race:0:2", "clearly the most powerful"), 
			L("Race:0:3", "never the same"), 
			L("Race:0:4", "shapeless"), 
			L("Race:0:5", "passive: anything"), 
			L("Race:0:6", "active: anything"), 
			L("Race:0:7", "noone compares")
		],
		[
			L("Race:1:1", "last day before retirement"), /// @loc Fish 
			L("Race:1:2", "duty calls"), 
			L("Race:1:3", "it's ok to eat"), 
			L("Race:1:4", "gills on your neck"), 
			L("Race:1:5", "like kevin costner"), 
			L("Race:1:6", "the taste of mud")
		],
		[
			L("Race:2:1", "crystal can handle this"), /// @loc Crystal
			L("Race:2:2", "family")
		],
		[
			L("Race:3:1", "eyes sees everything"), /// @loc Eyes
			L("Race:3:2", "don't blink"), 
			L("Race:3:3", "all these thoughts"), 
			L("Race:3:4", "eyes can't speak"), 
			L("Race:3:5", "telekinesis pushes projectiles away")
		],
		[
			L("Race:4:1", "it's so cold out here"), /// @loc Melting
			L("Race:4:2", "melting is tired"), 
			L("Race:4:3", "everything hurts"), 
			L("Race:4:4", "cough"), 
			L("Race:4:5", "brr..."), 
			L("Race:4:6", "it's ok to be scared")
		],
		[
			L("Race:5:1", "kill kill kill"), /// @loc Plant
			L("Race:5:2", "death death death"), 
			L("Race:5:3", "blood blood blood"), 
			L("Race:5:4", "no mercy"), 
			L("Race:5:5", "photosynthesizing..."), 
			L("Race:5:6", "snare is a source of light"), 
			L("Race:5:7", "gotta go fast")
		],
		[
			L("Race:6:1", "yung venuz is so cool"), /// @loc YV
			L("Race:6:2", "yung venuz is the best"), 
			L("Race:6:3", "so cool"), 
			L("Race:6:4", "thanks gun god"), 
			L("Race:6:5", "\\#verifyvenuz"), 
			L("Race:6:6", "2 yung 2 die"), 
			L("Race:6:7", "guns for fake necklace"), 
			L("Race:6:8", "guns that send textses"), 
			L("Race:6:9", "guns that make breakfast"), 
			L("Race:6:10", "mony"), 
			L("Race:6:11", "guns that straight festive"), 
			L("Race:6:12", "guns with 6 senses"), 
			L("Race:6:13", "guns that hate texas"), 
			L("Race:6:14", "guns that wear vests it"), 
			L("Race:6:15", "no @bpopo@s"), 
			L("Race:6:16", "pop pop")
		],
		[
			L("Race:7:1", "time to flex"), /// @loc Steroids
			L("Race:7:2", "study hard"), 
			L("Race:7:3", "steroids could do pushups forever"), 
			L("Race:7:4", "steroids used to be a scientist"), 
			L("Race:7:5", "appreciate @wrevolvers@s"), 
			L("Race:7:6", "get shots"), 
			L("Race:7:7", "get strong"), 
			L("Race:7:8", "read a book")
		],
		[
			L("Race:8:1", "6b 69 6c 6c#61 6c 6c#68 75 6d 61 6e 73"), /// @loc Robot, base16 for "kill all humans"
			L("Race:8:2", "72 6f 62 6f 74"), /// @loc base16 for "robot"
			L("Race:8:3", "3c 33"), /// @loc base16 for "<3"
			L("Race:8:4", "74 61 73 74 79"), /// @loc base16 for "tasty"
			L("Race:8:5", "@wguns@s for breakfast"), 
			L("Race:8:6", "I'm afraid I can't let you do that"), 
			L("Race:8:7", "don't forget to eat @wweapons@s")
		],
		[
			L("Race:9:1", "remember the training"), /// @loc Chicken
			L("Race:9:2", "focus"), 
			L("Race:9:3", "go"), 
			L("Race:9:4", "never surrender"), 
			L("Race:9:5", "amateur hour is over"), 
			L("Race:9:6", "again"), 
			L("Race:9:7", "getting decapitated reduces max HP"), 
			L("Race:9:8", "throw damage scales with your level")
		],
		[
			L("Race:10:1", "forget the old days"), /// @loc Rebel
			L("Race:10:2", "change is coming"), 
			L("Race:10:3", "allies are a source of light"), 
			L("Race:10:4", "a new generation"), 
			L("Race:10:5", "it will get better"), 
			L("Race:10:6", "spawning new allies @rheals@s old ones"), 
			L("Race:10:7", "your first ally costs less @rHP@s"), 
			L("Race:10:8", "allies take damage over time"), 
			L("Race:10:9", "the scarf is nice")
		],
		[
			L("Race:11:1", "@gradiation@s is everywhere"), /// @loc Horror
			L("Race:11:2", "in the zone"), 
			L("Race:11:3", "the horror"), 
			L("Race:11:4", "power"), 
			L("Race:11:5", "horror's beam powers up over time"), 
			L("Race:11:6", "horror's beam destroys projectiles"), 
			L("Race:11:7", "enemies absorb the beam's @grads@s"), 
			L("Race:11:8", "firing the beam pauses @grad@s attraction")
		],
		[
			L("Race:12:1", "another world lost"), /// @loc Rogue
			L("Race:12:2", "never stop"), 
			L("Race:12:3", "they're getting closer"), 
			L("Race:12:4", "never slow down"), 
			L("Race:12:5", "never look back"), 
			L("Race:12:6", "keep moving")
		],
		[
			L("Race:13:1", "big"), /// @loc Big Dog
			L("Race:13:2", "dog")
		],
		[
			L("Race:14:1", "nothing..."), /// @loc Skeleton
			L("Race:14:2", "dry"), 
			L("Race:14:3", "dusty"), 
			L("Race:14:4", "hard")
		],
		[
			L("Race:15:1", "can't wait"), /// @loc Frog
			L("Race:15:2", "let's go"), 
			L("Race:15:3", "restless"), 
			L("Race:15:4", "bloated"), 
			L("Race:15:5", "gas is good"), 
			L("Race:15:6", "let it all out"), 
			L("Race:15:7", "keep going"), 
			L("Race:15:8", "don't hold it up"), 
			L("Race:15:9", "wait for me")
		],
		[
			L("Race:16:1", "cool"), /// @loc Cuz (mods only)
			L("Race:16:2", "nice")
		],
	];
	for (var i = 0; i < array_length(race); i++) {
		loadUserTips(race[i], L, `Race:${i}:`);
	}
	
	curse = [
		L("Curse:1", "@qw @qh @qy"), /// @loc Adding a @q before each letter makes the text wobble
		L("Curse:2", "@qh @qe @ql @ql @qo"),
		L("Curse:3", "@qi @qs @qe @qe @qy @qo @qu"),
		L("Curse:4", "@ql @qe @qt @qm @qe @qo @qu @qt"),
		L("Curse:5", "@qp @ql @qe @qa @qs @qe @qs @qt @qo @qp")
	];
	loadUserTips(curse, L, "Curse:");
	
	lowhp = [
		L("Low:1", "oh dear"),
		L("Low:2", "this isn't going to end well"),
		L("Low:3", "good luck"),
		L("Low:4", "no no no"),
		L("Low:5", "help")
	];
	loadUserTips(lowhp, L, "Low:");
	
	loop = [
		L("Loop:1", "this will never end"),
		L("Loop:2", "it's a whole new world"),
		L("Loop:3", "monsters everywhere"),
		L("Loop:4", "what's happening"),
		L("Loop:5", "there's no limit"),
		L("Loop:6", "we'll reach for the sky"),
		L("Loop:7", "no valley too deep"),
		L("Loop:8", "no mountain too high")
	];
	loadUserTips(loop, L, "Loop:");
	
	misc = [];
}
function scrTipsInit() {
	tips = new TipsStruct();
}
function scrTipsGetOne(_arr) {
	if (!is_array(_arr)) return "";
	static _tips = [];
	
	var n = array_length(_arr);
	var _found = 0;
	if (n == 0) return "";
	for (var i = 0; i < n; i++) {
		var _val = _arr[i];
		if (is_method(_val)) {
			_val = _val();
		}
		if (is_string(_val) && _val != "" || is_array(_val)) {
			_tips[_found++] = _val;
		}
	}
	if (_found == 0) return "";
	return _tips[irandom_w(_found - 1)];
}
function scrTipsGetOneOf(_arr_arr, _ind) {
	if (_ind >= 0 && _ind < array_length(_arr_arr)) return scrTipsGetOne(_arr_arr[_ind]);
	return "";
}
function scrTipsGet() {
	var i, r, q;
	var t = choose_w(0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 3, 4, 5, 6, 7, 8);
	if (!instance_exists(Player)) t = 0;
	var tips:TipsStruct = UberCont.tips;
	if (t == 0) return scrTipsGetOne(tips.general);
	if (t == 1 && random_w(5) < 1) {
		if (UberCont.showtutorial == 1) return scrTipsGetOne(tips.tutorial);
		if (UberCont.daily == 1) return scrTipsGetOne(tips.daily);
		if (UberCont.weekly == 1) return scrTipsGetOne(tips.weekly);
		if (UberCont.hardmode == 1) return scrTipsGetOne(tips.hardmode);
		if (UberCont.coop == 1) return scrTipsGetOne(tips.coop);
	}
	if (t == 1) {
		if (is_string(GameCont.area)) return mod_defcall("area", GameCont.area, "area_text", "");
		if (GameCont.area >= 100) {
			return scrTipsGetOneOf(tips.secret, GameCont.area - 100);
		} else return scrTipsGetOneOf(tips.area, GameCont.area);
	}
	var _player = instance_find(Player, floor(random_w(instance_number(Player))));
	if (t == 2) {
		with (_player) if (is_string(bskin)) {
			r = mod_rawcall("skin", bskin, "skin_ttip");
			if (is_string(r) || is_array(r)) return r;
		}
		
		if (_player.race_id == Race.Custom) {
			with (_player) {
				r = mod_rawcall("race", race, "race_ttip");
				return r;
			}
			return "";
		}
		
		if (GameCont.level == 10 && random_w(5) < 1) {
			return scrTipsGetOneOf(tips.race_ultra, _player.race_id);
		}
		return scrTipsGetOneOf(tips.race, _player.race_id);
	}
	if (t == 3) {
		if (random_w(2) < 1) {
			if ((_player.curse > 0 || _player.bcurse > 0) && random_w(10) < 1) {
				return scrTipsGetOne(tips.curse);
			} else return scrWepText(_player.wep);
		} else return "";
	}
	if (t == 4) {
		i = ds_list_size(global.skill_list);
		if (i > 0) {
			r = global.skill_list[|irandom_w(i - 1)];
			if (is_string(r)) {
				return mod_defcall("skill", r, "skill_tip", "");
			} else return global.skillTips[r];
		}
	}
	if (t == 5) with (GameCont) {
		if (is_string(crown)) {
			return mod_defcall("crown", crown, "crown_tip", "");
		} else return global.crownTips[crown];
	}
	if (t == 6 && _player.my_health < 4) return scrTipsGetOne(tips.lowhp);
	if (t == 7 && GameCont.loops > 0) return scrTipsGetOne(tips.loop);
	return scrTipsGetOne(tips.misc);
}
