function scrMakeTopSmallsAll() {
	var i;
	with (Floor)
	if (object_index == Floor) {
		/*
		111114 <- -32
		2....4 <- -16
		2.xx.4 <- 0
		2.xx.4 <- +16
		2....4 <- +32
		233333 <- +48
		*/
		for (i = 0; i < 80; i += 16) {
			scrMakeTopSmall(x - 32 + i, y -32     );
			scrMakeTopSmall(x - 32,     y - 16 + i);
			scrMakeTopSmall(x - 16 + i, y + 48    );
			scrMakeTopSmall(x + 48,     y - 32 + i);
		}
	} else {
		/*
		11114 -32
		2...4 -16
		2.x.4 0
		2...4 16
		23333 32
		*/
		for (i = 0; i < 64; i += 16) {
			scrMakeTopSmall(x - 32 + i, y - 32    );
			scrMakeTopSmall(x - 32,     y - 16 + i);
			scrMakeTopSmall(x - 16 + i, y + 32    );
			scrMakeTopSmall(x + 32,     y - 32 + i);
		}
	}
}
