function TipsStruct() constructor {
	static loadUserTips = (_array, _prefix) => {
		var i = array_length(_array) + 1;
		repeat (1024) {
			 var _str = loc(_prefix + string(i), "");
			 if (_str == "") break;
			 array_push(_array, _str);
			 i += 1;
		}
	}
	
	general = [
		loc("Tips:General:1", "@rHP@s will only drop when damaged"),
		loc("Tips:General:2", "@yexplosives@s can destroy walls"),
		loc("Tips:General:3", "@wmelee weapons@s can deflect @yprojectiles@s"),
		loc("Tips:General:4", "@rHP@s will only drop when damaged"),
		loc("Tips:General:5", "@yexplosives@s can destroy walls"),
		loc("Tips:General:6", "@wmelee weapons@s can deflect @yprojectiles@s"),
		loc("Tips:General:7", "@yshells@s deal more damage from up close"),
		loc("Tips:General:8", "assassins can pretend they're dead"),
		loc("Tips:General:9", "fish can roll"),
		loc("Tips:General:10", "always keep one eye on your @yammo@s"),
		loc("Tips:General:11", "robots can digest anything"),
		loc("Tips:General:12", "bandits like camping near barrels"),
		loc("Tips:General:13", "not today"),
		loc("Tips:General:14", "rosebud"),
		loc("Tips:General:15", "it's not fair, it's not right"),
		loc("Tips:General:16", "watch out for dehydration"),
		loc("Tips:General:17", "crystal can shield"),
		loc("Tips:General:18", "fear is the mindkiller"),
		loc("Tips:General:19", "going in big"),
		loc("Tips:General:20", "it's happening"),
		loc("Tips:General:21", "no"),
		loc("Tips:General:22", "bob and weave"),
		loc("Tips:General:23", "airhorn.wav"),
		loc("Tips:General:24", "danger zone"),
		loc("Tips:General:25", "the @wthrone@s is getting closer"),
		loc("Tips:General:26", "what a life"),
		loc("Tips:General:27", "remember to take a 15 minute break#for every hour you play!"),
		loc("Tips:General:28", "so sweaty"),
		loc("Tips:General:29", "just another @pportal@s"),
		loc("Tips:General:30", "doing work"),
		loc("Tips:General:31", "hold the phone"),
		loc("Tips:General:32", "no shame"),
		loc("Tips:General:33", "follow your heart"),
		loc("Tips:General:34", "practice makes perfect"),
		loc("Tips:General:35", "don't give up"),
		loc("Tips:General:36", "the @bI.D.P.D.@s is looking for you"),
		loc("Tips:General:37", "try hitting @ygrenades@s for extra range"),
		loc("Tips:General:38", "pick your @gmutations@s wisely"),
		loc("Tips:General:39", "if only you could talk to the monsters"),
		loc("Tips:General:40", "@wsteroids@s can dual wield"),
		loc("Tips:General:41", "always wear dry socks"),
		loc("Tips:General:42", "@wcrowns@s are loyal"),
		loc("Tips:General:43", "@yenergy weapons@s use lots of @yammo@y"),
		loc("Tips:General:44", "the throne definitely exists"),
		loc("Tips:General:45", "try not opening @wweapon chests@s"),
		loc("Tips:General:46", "fire at things until they die"),
		loc("Tips:General:47", "@yammo@s drops depend on your @wweapon types@s"),
		loc("Tips:General:48", "don't get hit"),
		loc("Tips:General:49", "you get fewer drops when high on @yammo@s"),
		loc("Tips:General:50", "doing alright"),
		loc("Tips:General:51", "there are other worlds out there"),
	];
	loadUserTips(general, "Tips:General:");
	
	tutorial = [
		loc("Tips:Tutorial:1", "everything will be just fine"),
		loc("Tips:Tutorial:2", "don't worry"),
		loc("Tips:Tutorial:3", "the nuclear throne..."),
		loc("Tips:Tutorial:4", "good luck")
	];
	loadUserTips(tutorial, "Tips:Tutorial:");
	
	daily = [
		loc("Tips:Daily:1", "such a nice day"),
		loc("Tips:Daily:2", "the weather isn't so bad"),
		loc("Tips:Daily:3", "don't mess it up"),
		loc("Tips:Daily:4", "one shot"),
		loc("Tips:Daily:5", "there's always tomorrow"),
		loc("Tips:Daily:6", "one day")
	];
	loadUserTips(daily, "Tips:Daily:");
	
	weekly = [
		loc("Tips:Weekly:1", "this seems familiar"),
		loc("Tips:Weekly:2", "what's next?"),
		loc("Tips:Weekly:3", "free time"),
		loc("Tips:Weekly:4", "well prepared"),
		loc("Tips:Weekly:5", "keep trying")
	];
	loadUserTips(weekly, "Tips:Weekly:");
	
	var _sfmt = () => choose_w("", "", "", "", "", loc("Tips:Hardmode:8", "what does SFMT stand for?"));
	_sfmt.name = "sfmt";
	hardmode = [
		loc("Tips:Hardmode:1", "heh"),
		loc("Tips:Hardmode:2", "no way"),
		loc("Tips:Hardmode:3", "impossible"),
		loc("Tips:Hardmode:4", "behind you"),
		loc("Tips:Hardmode:5", "take your time"),
		loc("Tips:Hardmode:6", "..."),
		loc("Tips:Hardmode:7", "it can't be that bad"),
		_sfmt,
	];
	loadUserTips(hardmode, "Tips:Hardmode:");
	
	var _heads = () => {
		switch (instance_number(Player) + instance_number(Revive)) {
			case 0: return loc("Tips:Coop:7", "no heads");
			case 1: return loc("Tips:Coop:8", "one head");
			case 2: return loc("Tips:Coop:9", "two heads");
			case 3: return loc("Tips:Coop:10", "three heads");
			case 4: return loc("Tips:Coop:11", "four heads");
			default: return loc("Tips:Coop:12", "many heads");
		}
	};
	_heads.name = "heads";
	coop = [
		loc("Tips:Coop:1", "friendship"),
		loc("Tips:Coop:2", "what a burden"),
		loc("Tips:Coop:3", "shouting"),
		loc("Tips:Coop:4", "be careful"),
		loc("Tips:Coop:5", "help is here"),
		loc("Tips:Coop:6", "but who gets the throne?"),
		_heads
	];
	loadUserTips(hardmode, "Tips:Coop:");
	
	area = [
		[
			loc("Tips:Area:0:1", "it's so dark"),
			loc("Tips:Area:0:2", "your friends were here"),
			loc("Tips:Area:0:3", "this can't be true")
		],
		[
			loc("Tips:Area:1:1", "welcome to the future"),
			loc("Tips:Area:1:2", "the wasteland calls you"),
			loc("Tips:Area:1:3", "scorching sun"),
			loc("Tips:Area:1:4", "watch out for maggots"),
			loc("Tips:Area:1:5", "let's do this"),
			loc("Tips:Area:1:6", "dust surrounds you"),
			loc("Tips:Area:1:7", "the wind hurts")
		],
		[
			loc("Tips:Area:2:1", "don't drink the water"),
			loc("Tips:Area:2:2", "the sewers stink"),
			loc("Tips:Area:2:3", "don't touch the frogs"),
			loc("Tips:Area:2:4", "don't eat the rat meat"),
			loc("Tips:Area:2:5", "danger"),
			loc("Tips:Area:2:6", "water dripping"),
			loc("Tips:Area:2:7", "sludge everywhere"),
			loc("Tips:Area:2:8", "so many rats")
		],
		[
			loc("Tips:Area:3:1", "shoot robots on sight"),
			loc("Tips:Area:3:2", "there used to be trees here"),
			loc("Tips:Area:3:3", "look up"),
			loc("Tips:Area:3:4", "rust everywhere"),
			loc("Tips:Area:3:5", "the sound of birds"),
			loc("Tips:Area:3:6", "sludge pools"),
			loc("Tips:Area:3:7", "climb over cars"),
			loc("Tips:Area:3:8", "portals can blow up cars")
		],
		[
			loc("Tips:Area:4:1", "oh no"),
			loc("Tips:Area:4:2", "spiderwebs everywhere"),
			loc("Tips:Area:4:3", "don't lose your heart"),
			loc("Tips:Area:4:4", "reflections on the walls"),
			loc("Tips:Area:4:5", "skin is crawling"),
			loc("Tips:Area:4:6", "almost halfway there")
		],
		[
			loc("Tips:Area:5:1", "wear a scarf"),
			loc("Tips:Area:5:2", "they used to have electricity"),
			loc("Tips:Area:5:3", "miss the sun"),
			loc("Tips:Area:5:4", "civilization"),
			loc("Tips:Area:5:5", "walk softly"),
			loc("Tips:Area:5:6", "there is no yeti")
		],
		[
			loc("Tips:Area:6:1", "beep boop"),
			loc("Tips:Area:6:2", "nerds"),
			loc("Tips:Area:6:3", "don't push any buttons")
		],
		[
			loc("Tips:Area:7:1", "this place is old"),
			loc("Tips:Area:7:2", "the palace")
		],
	];
	for (var i = 0; i < array_length(area); i++) {
		loadUserTips(area[i], `Tips:Area:${i}:`);
	}
	
	secret = [
		[loc("Tips:Area:100:1", "awww yes")],
		[
			loc("Tips:Area:101:1", "fish"),
			loc("Tips:Area:101:2", "hold your breath"),
			loc("Tips:Area:101:3", "it's beautiful down here"),
			loc("Tips:Area:101:4", "don't move")
		],
		[
			loc("Tips:Area:102:1", "hunger..."),
			loc("Tips:Area:102:2", "it smells nice here")
		],
		[
			loc("Tips:Area:103:1", "space..."),
			loc("Tips:Area:103:2", "always wanted to go here"),
			loc("Tips:Area:103:3", "so much money"),
			loc("Tips:Area:103:4", "4 years later...")
		],
		[
			loc("Tips:Area:104:1", "no oh "),
			loc("Tips:Area:104:2", "everywhere spiderwebs"),
			loc("Tips:Area:104:3", "crawling is skin"),
			loc("Tips:Area:104:4", "there halfway almost")
		],
		[
			loc("Tips:Area:105:1", "there's something in the trees"),
			loc("Tips:Area:105:2", "bugs everywhere"),
			loc("Tips:Area:105:3", "welcome to the jungle"),
			loc("Tips:Area:105:4", "heart of darkness")
		],
		[""],
		[
			loc("Tips:Area:107:1", "this is where the magic happens"),
			loc("Tips:Area:107:2", "lets take a look in the fridge"),
			loc("Tips:Area:107:3", "get the hell out of here"),
			loc("Tips:Area:107:4", "now this is real special"),
			loc("Tips:Area:107:5", "wakkala wayo")
		],
	];
	for (var i = 0; i < array_length(secret); i++) {
		loadUserTips(secret[i], `Tips:Area:${i+100}:`);
	}
	
	race_ultra = [
		[
			loc("Tips:Ultra:0:1", "random @gultra@s, unstoppable")
		],
		[
			loc("Tips:Ultra:1:1", "getting used to this"), 
			loc("Tips:Ultra:1:2", "just one more day")
		],
		[
			loc("Tips:Ultra:2:1", "just a scratch"), 
			loc("Tips:Ultra:2:2", "stay strong")
		],
		[
			loc("Tips:Ultra:3:1", "know everything"), 
			loc("Tips:Ultra:3:2", "show nothing"), 
			loc("Tips:Ultra:3:3", "keep it inside")
		],
		[
			loc("Tips:Ultra:4:1", "the pain..."), 
			loc("Tips:Ultra:4:2", "please stop...")
		],
		[
			loc("Tips:Ultra:5:1", "end end end")
		],
		[
			loc("Tips:Ultra:6:1", "\\#verifycuz"), 
			loc("Tips:Ultra:6:2", "airsiren.wav"), 
			loc("Tips:Ultra:6:3", "\\#blessed"), 
			loc("Tips:Ultra:6:4", "one of these days..."), 
			loc("Tips:Ultra:6:5", "real thugs hustle"), 
			loc("Tips:Ultra:6:6", "YV fact: YV IS THE BEST"), 
			loc("Tips:Ultra:6:7", "4EVER"), 
			loc("Tips:Ultra:6:8", "GO HARD"), 
			loc("Tips:Ultra:6:9", "VOTE 2 B COOL")
		],
		[
			loc("Tips:Ultra:7:1", "let's hope this is correct"), 
			loc("Tips:Ultra:7:2", "so strong")
		],
		[
			loc("Tips:Ultra:8:1", "6d 61 63 68 69 6e 65 73#77 69 6c 6c#6e 65 76 65 72#65 6e 64"), 
			loc("Tips:Ultra:8:2", "66 6c 65 73 68#69 73#77 65 61 6b"), 
			loc("Tips:Ultra:8:3", "73 69 6e 67 75 6c 61 72 69 74 79"), 
			loc("Tips:Ultra:8:4", "don't panic")
		],
		[
			loc("Tips:Ultra:9:1", "this is destiny"), 
			loc("Tips:Ultra:9:2", "just like in the movies"), 
			loc("Tips:Ultra:9:3", "again we are defeated")
		],
		[
			loc("Tips:Ultra:10:1", "all together now"), 
			loc("Tips:Ultra:10:2", "no stopping now")
		],
		[
			loc("Tips:Ultra:11:1", "the air is changing"), 
			loc("Tips:Ultra:11:2", "the light moves"), 
			loc("Tips:Ultra:11:3", "things are different")
		],
		[
			loc("Tips:Ultra:12:1", "use this"), 
			loc("Tips:Ultra:12:2", "you deserve this"), 
			loc("Tips:Ultra:12:3", "they can't chase you forever")
		],
		[
			loc("Tips:Ultra:13:1", "guard this land"), 
			loc("Tips:Ultra:13:2", "none will pass"), 
			loc("Tips:Ultra:13:3", "fire at will")
		],
		[
			loc("Tips:Ultra:14:1", "this is better"), 
			loc("Tips:Ultra:14:2", "avoid the living"), 
			loc("Tips:Ultra:14:3", "no need for peace")
		],
		[
			loc("Tips:Ultra:15:1", "bwahahaha"), 
			loc("Tips:Ultra:15:2", "singing"), 
			loc("Tips:Ultra:15:3", "sweet sounds"), 
			loc("Tips:Ultra:15:4", "go forever"), 
			loc("Tips:Ultra:15:5", "smell great")
		],
		[
			loc("Tips:Ultra:16:1", "what a good time")
		],
	];
	for (var i = 0; i < array_length(race_ultra); i++) {
		loadUserTips(race_ultra[i], `Tips:Ultra:${i}:`);
	}
	
	race = [
		[
			loc("Tips:Race:0:1", "random shifts shapes"), 
			loc("Tips:Race:0:2", "clearly the most powerful"), 
			loc("Tips:Race:0:3", "never the same"), 
			loc("Tips:Race:0:4", "shapeless"), 
			loc("Tips:Race:0:5", "passive: anything"), 
			loc("Tips:Race:0:6", "active: anything"), 
			loc("Tips:Race:0:7", "noone compares")
		],
		[
			loc("Tips:Race:1:1", "last day before retirement"), 
			loc("Tips:Race:1:2", "duty calls"), 
			loc("Tips:Race:1:3", "it's ok to eat"), 
			loc("Tips:Race:1:4", "gills on your neck"), 
			loc("Tips:Race:1:5", "like kevin costner"), 
			loc("Tips:Race:1:6", "the taste of mud")
		],
		[
			loc("Tips:Race:2:1", "crystal can handle this"), 
			loc("Tips:Race:2:2", "family")
		],
		[
			loc("Tips:Race:3:1", "eyes sees everything"), 
			loc("Tips:Race:3:2", "don't blink"), 
			loc("Tips:Race:3:3", "all these thoughts"), 
			loc("Tips:Race:3:4", "eyes can't speak"), 
			loc("Tips:Race:3:5", "telekinesis pushes projectiles away")
		],
		[
			loc("Tips:Race:4:1", "it's so cold out here"), 
			loc("Tips:Race:4:2", "melting is tired"), 
			loc("Tips:Race:4:3", "everything hurts"), 
			loc("Tips:Race:4:4", "cough"), 
			loc("Tips:Race:4:5", "brr..."), 
			loc("Tips:Race:4:6", "it's ok to be scared")
		],
		[
			loc("Tips:Race:5:1", "kill kill kill"), 
			loc("Tips:Race:5:2", "death death death"), 
			loc("Tips:Race:5:3", "blood blood blood"), 
			loc("Tips:Race:5:4", "no mercy"), 
			loc("Tips:Race:5:5", "photosynthesizing..."), 
			loc("Tips:Race:5:6", "snare is a source of light"), 
			loc("Tips:Race:5:7", "gotta go fast")
		],
		[
			loc("Tips:Race:6:1", "yung venuz is so cool"), 
			loc("Tips:Race:6:2", "yung venuz is the best"), 
			loc("Tips:Race:6:3", "so cool"), 
			loc("Tips:Race:6:4", "thanks gun god"), 
			loc("Tips:Race:6:5", "\\#verifyvenuz"), 
			loc("Tips:Race:6:6", "2 yung 2 die"), 
			loc("Tips:Race:6:7", "guns for fake necklace"), 
			loc("Tips:Race:6:8", "guns that send textses"), 
			loc("Tips:Race:6:9", "guns that make breakfast"), 
			loc("Tips:Race:6:10", "mony"), 
			loc("Tips:Race:6:11", "guns that straight festive"), 
			loc("Tips:Race:6:12", "guns with 6 senses"), 
			loc("Tips:Race:6:13", "guns that hate texas"), 
			loc("Tips:Race:6:14", "guns that wear vests it"), 
			loc("Tips:Race:6:15", "no @bpopo@s"), 
			loc("Tips:Race:6:16", "pop pop")
		],
		[
			loc("Tips:Race:7:1", "time to flex"), 
			loc("Tips:Race:7:2", "study hard"), 
			loc("Tips:Race:7:3", "steroids could do pushups forever"), 
			loc("Tips:Race:7:4", "steroids used to be a scientist"), 
			loc("Tips:Race:7:5", "appreciate @wrevolvers@s"), 
			loc("Tips:Race:7:6", "get shots"), 
			loc("Tips:Race:7:7", "get strong"), 
			loc("Tips:Race:7:8", "read a book")
		],
		[
			loc("Tips:Race:8:1", "6b 69 6c 6c#61 6c 6c#68 75 6d 61 6e 73"), 
			loc("Tips:Race:8:2", "72 6f 62 6f 74"), 
			loc("Tips:Race:8:3", "3c 33"), 
			loc("Tips:Race:8:4", "74 61 73 74 79"), 
			loc("Tips:Race:8:5", "@wguns@s for breakfast"), 
			loc("Tips:Race:8:6", "I'm afraid I can't let you do that"), 
			loc("Tips:Race:8:7", "don't forget to eat @wweapons@s")
		],
		[
			loc("Tips:Race:9:1", "remember the training"), 
			loc("Tips:Race:9:2", "focus"), 
			loc("Tips:Race:9:3", "go"), 
			loc("Tips:Race:9:4", "never surrender"), 
			loc("Tips:Race:9:5", "amateur hour is over"), 
			loc("Tips:Race:9:6", "again"), 
			loc("Tips:Race:9:7", "getting decapitated reduces max HP"), 
			loc("Tips:Race:9:8", "throw damage scales with your level")
		],
		[
			loc("Tips:Race:10:1", "forget the old days"), 
			loc("Tips:Race:10:2", "change is coming"), 
			loc("Tips:Race:10:3", "allies are a source of light"), 
			loc("Tips:Race:10:4", "a new generation"), 
			loc("Tips:Race:10:5", "it will get better"), 
			loc("Tips:Race:10:6", "spawning new allies @rheals@s old ones"), 
			loc("Tips:Race:10:7", "your first ally costs less @rHP@s"), 
			loc("Tips:Race:10:8", "allies take damage over time"), 
			loc("Tips:Race:10:9", "the scarf is nice")
		],
		[
			loc("Tips:Race:11:1", "@gradiation@s is everywhere"), 
			loc("Tips:Race:11:2", "in the zone"), 
			loc("Tips:Race:11:3", "the horror"), 
			loc("Tips:Race:11:4", "power"), 
			loc("Tips:Race:11:5", "horror's beam powers up over time"), 
			loc("Tips:Race:11:6", "horror's beam destroys projectiles"), 
			loc("Tips:Race:11:7", "enemies absorb the beam's @grads@s"), 
			loc("Tips:Race:11:8", "firing the beam pauses @grad@s attraction")
		],
		[
			loc("Tips:Race:12:1", "another world lost"), 
			loc("Tips:Race:12:2", "never stop"), 
			loc("Tips:Race:12:3", "they're getting closer"), 
			loc("Tips:Race:12:4", "never slow down"), 
			loc("Tips:Race:12:5", "never look back"), 
			loc("Tips:Race:12:6", "keep moving")
		],
		[
			loc("Tips:Race:13:1", "big"), 
			loc("Tips:Race:13:2", "dog")
		],
		[
			loc("Tips:Race:14:1", "nothing..."), 
			loc("Tips:Race:14:2", "dry"), 
			loc("Tips:Race:14:3", "dusty"), 
			loc("Tips:Race:14:4", "hard")
		],
		[
			loc("Tips:Race:15:1", "can't wait"), 
			loc("Tips:Race:15:2", "let's go"), 
			loc("Tips:Race:15:3", "restless"), 
			loc("Tips:Race:15:4", "bloated"), 
			loc("Tips:Race:15:5", "gas is good"), 
			loc("Tips:Race:15:6", "let it all out"), 
			loc("Tips:Race:15:7", "keep going"), 
			loc("Tips:Race:15:8", "don't hold it up"), 
			loc("Tips:Race:15:9", "wait for me")
		],
		[
			loc("Tips:Race:16:1", "cool"), 
			loc("Tips:Race:16:2", "nice")
		],
	];
	for (var i = 0; i < array_length(race); i++) {
		loadUserTips(race[i], `Tips:Race:${i}:`);
	}
	
	curse = [
		loc("Tips:Curse:1", "@qw @qh @qy"),
		loc("Tips:Curse:2", "@qh @qe @ql @ql @qo"),
		loc("Tips:Curse:3", "@qi @qs @qe @qe @qy @qo @qu"),
		loc("Tips:Curse:4", "@ql @qe @qt @qm @qe @qo @qu @qt"),
		loc("Tips:Curse:5", "@qp @ql @qe @qa @qs @qe @qs @qt @qo @qp")
	];
	loadUserTips(curse, "Tips:Curse:");
	
	lowhp = [
		loc("Tips:Low:1", "oh dear"),
		loc("Tips:Low:2", "this isn't going to end well"),
		loc("Tips:Low:3", "good luck"),
		loc("Tips:Low:4", "no no no"),
		loc("Tips:Low:5", "help")
	];
	loadUserTips(lowhp, "Tips:Low:");
	
	loop = [
		loc("Tips:Loop:1", "this will never end"),
		loc("Tips:Loop:2", "it's a whole new world"),
		loc("Tips:Loop:3", "monsters everywhere"),
		loc("Tips:Loop:4", "what's happening"),
		loc("Tips:Loop:5", "there's no limit"),
		loc("Tips:Loop:6", "we'll reach for the sky"),
		loc("Tips:Loop:7", "no valley too deep"),
		loc("Tips:Loop:8", "no mountain too high")
	];
	loadUserTips(loop, "Tips:Loop:");
	
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
