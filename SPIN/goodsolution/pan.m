#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - spin2.pml:104 - [(run Car(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - spin2.pml:105 - [(run Car(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - spin2.pml:106 - [(run Car(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 0, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - spin2.pml:109 - [(run Car(5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 0, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - spin2.pml:110 - [(run Car(6))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!(addproc(II, 1, 0, 6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - spin2.pml:111 - [(run Car(7))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(addproc(II, 1, 0, 7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - spin2.pml:114 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 10: // STATE 1 - spin2.pml:61 - [((carType<=4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->carType)<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 2 - spin2.pml:49 - [((entryExitProtocol>0))] (15:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.entryExitProtocol>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(0, 3, 15) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 5 - spin2.pml:50 - [((downCarsCount>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.downCarsCount>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 6 - spin2.pml:51 - [temp = delayedUpCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedUpCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 7 - spin2.pml:51 - [delayedUpCarsCount = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.delayedUpCarsCount;
		now.delayedUpCarsCount = (((P0 *)this)->temp+1);
#ifdef VAR_RANGES
		logval("delayedUpCarsCount", now.delayedUpCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 8 - spin2.pml:52 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 10 - spin2.pml:53 - [((waitUpCars>0))] (17:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.waitUpCars>0)))
			continue;
		/* merge: waitUpCars = (waitUpCars-1)(0, 11, 17) */
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.waitUpCars;
		now.waitUpCars = (now.waitUpCars-1);
#ifdef VAR_RANGES
		logval("waitUpCars", now.waitUpCars);
#endif
		;
		/* merge: .(goto)(0, 16, 17) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 13 - spin2.pml:54 - [(!((downCarsCount>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!( !((now.downCarsCount>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 17 - spin2.pml:56 - [temp = upCarsCount] (0:0:1 - 3)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.upCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 18 - spin2.pml:56 - [upCarsCount = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.upCarsCount;
		now.upCarsCount = (((P0 *)this)->temp+1);
#ifdef VAR_RANGES
		logval("upCarsCount", now.upCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 19 - spin2.pml:22 - [(((upCarsCount==0)&&(delayedDownCarsCount>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 20 - spin2.pml:23 - [temp = delayedDownCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedDownCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 21 - spin2.pml:23 - [delayedDownCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = now.delayedDownCarsCount;
		now.delayedDownCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedDownCarsCount", now.delayedDownCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 22 - spin2.pml:24 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.waitDownCars;
		now.waitDownCars = (now.waitDownCars+1);
#ifdef VAR_RANGES
		logval("waitDownCars", now.waitDownCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 24 - spin2.pml:27 - [((((downCarsCount==0)&&(delayedUpCarsCount>0))&&!(((upCarsCount==0)&&(delayedDownCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))&& !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 25 - spin2.pml:28 - [temp = delayedUpCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedUpCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 26 - spin2.pml:28 - [delayedUpCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = now.delayedUpCarsCount;
		now.delayedUpCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedUpCarsCount", now.delayedUpCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 27 - spin2.pml:29 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.waitUpCars;
		now.waitUpCars = (now.waitUpCars+1);
#ifdef VAR_RANGES
		logval("waitUpCars", now.waitUpCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 29 - spin2.pml:31 - [((!(((upCarsCount==0)&&(delayedDownCarsCount>0)))&&!(((downCarsCount==0)&&(delayedUpCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!(( !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0)))&& !(((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 30 - spin2.pml:32 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 36 - spin2.pml:62 - [(!((carType<=4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!( !((((int)((P0 *)this)->carType)<=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 37 - spin2.pml:37 - [((entryExitProtocol>0))] (50:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((now.entryExitProtocol>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(0, 38, 50) */
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 32: // STATE 40 - spin2.pml:38 - [((upCarsCount>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!((now.upCarsCount>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 41 - spin2.pml:39 - [temp = delayedDownCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedDownCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 42 - spin2.pml:39 - [delayedDownCarsCount = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = now.delayedDownCarsCount;
		now.delayedDownCarsCount = (((P0 *)this)->temp+1);
#ifdef VAR_RANGES
		logval("delayedDownCarsCount", now.delayedDownCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 43 - spin2.pml:40 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 45 - spin2.pml:41 - [((waitDownCars>0))] (52:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.waitDownCars>0)))
			continue;
		/* merge: waitDownCars = (waitDownCars-1)(0, 46, 52) */
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.waitDownCars;
		now.waitDownCars = (now.waitDownCars-1);
#ifdef VAR_RANGES
		logval("waitDownCars", now.waitDownCars);
#endif
		;
		/* merge: .(goto)(0, 51, 52) */
		reached[0][51] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 37: // STATE 48 - spin2.pml:42 - [(!((upCarsCount>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!( !((now.upCarsCount>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 52 - spin2.pml:44 - [temp = downCarsCount] (0:0:1 - 3)
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.downCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 53 - spin2.pml:44 - [downCarsCount = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.downCarsCount;
		now.downCarsCount = (((P0 *)this)->temp+1);
#ifdef VAR_RANGES
		logval("downCarsCount", now.downCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 54 - spin2.pml:22 - [(((upCarsCount==0)&&(delayedDownCarsCount>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 55 - spin2.pml:23 - [temp = delayedDownCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedDownCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 56 - spin2.pml:23 - [delayedDownCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		(trpt+1)->bup.oval = now.delayedDownCarsCount;
		now.delayedDownCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedDownCarsCount", now.delayedDownCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 57 - spin2.pml:24 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		(trpt+1)->bup.oval = now.waitDownCars;
		now.waitDownCars = (now.waitDownCars+1);
#ifdef VAR_RANGES
		logval("waitDownCars", now.waitDownCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 59 - spin2.pml:27 - [((((downCarsCount==0)&&(delayedUpCarsCount>0))&&!(((upCarsCount==0)&&(delayedDownCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!((((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))&& !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 60 - spin2.pml:28 - [temp = delayedUpCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedUpCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 61 - spin2.pml:28 - [delayedUpCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = now.delayedUpCarsCount;
		now.delayedUpCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedUpCarsCount", now.delayedUpCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 62 - spin2.pml:29 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.waitUpCars;
		now.waitUpCars = (now.waitUpCars+1);
#ifdef VAR_RANGES
		logval("waitUpCars", now.waitUpCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 64 - spin2.pml:31 - [((!(((upCarsCount==0)&&(delayedDownCarsCount>0)))&&!(((downCarsCount==0)&&(delayedUpCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		if (!(( !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0)))&& !(((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 65 - spin2.pml:32 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 74 - spin2.pml:90 - [((carType<=4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		if (!((((int)((P0 *)this)->carType)<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 75 - spin2.pml:91 - [assert((upCarsCount>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		spin_assert((now.upCarsCount>0), "(upCarsCount>0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 76 - spin2.pml:92 - [assert((downCarsCount==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		spin_assert((now.downCarsCount==0), "(downCarsCount==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 77 - spin2.pml:93 - [(!((carType<=4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		if (!( !((((int)((P0 *)this)->carType)<=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 78 - spin2.pml:94 - [assert((downCarsCount>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		spin_assert((now.downCarsCount>0), "(downCarsCount>0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 79 - spin2.pml:95 - [assert((upCarsCount==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		spin_assert((now.upCarsCount==0), "(upCarsCount==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 82 - spin2.pml:79 - [((carType<=4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((int)((P0 *)this)->carType)<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 83 - spin2.pml:73 - [((entryExitProtocol>0))] (86:0:1 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		if (!((now.entryExitProtocol>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(0, 84, 86) */
		reached[0][84] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 58: // STATE 86 - spin2.pml:74 - [temp = upCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.upCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 87 - spin2.pml:74 - [upCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.oval = now.upCarsCount;
		now.upCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("upCarsCount", now.upCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 88 - spin2.pml:22 - [(((upCarsCount==0)&&(delayedDownCarsCount>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		if (!(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 89 - spin2.pml:23 - [temp = delayedDownCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedDownCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 90 - spin2.pml:23 - [delayedDownCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		(trpt+1)->bup.oval = now.delayedDownCarsCount;
		now.delayedDownCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedDownCarsCount", now.delayedDownCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 91 - spin2.pml:24 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = now.waitDownCars;
		now.waitDownCars = (now.waitDownCars+1);
#ifdef VAR_RANGES
		logval("waitDownCars", now.waitDownCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 93 - spin2.pml:27 - [((((downCarsCount==0)&&(delayedUpCarsCount>0))&&!(((upCarsCount==0)&&(delayedDownCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!((((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))&& !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 94 - spin2.pml:28 - [temp = delayedUpCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedUpCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 95 - spin2.pml:28 - [delayedUpCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][95] = 1;
		(trpt+1)->bup.oval = now.delayedUpCarsCount;
		now.delayedUpCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedUpCarsCount", now.delayedUpCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 96 - spin2.pml:29 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.oval = now.waitUpCars;
		now.waitUpCars = (now.waitUpCars+1);
#ifdef VAR_RANGES
		logval("waitUpCars", now.waitUpCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 98 - spin2.pml:31 - [((!(((upCarsCount==0)&&(delayedDownCarsCount>0)))&&!(((downCarsCount==0)&&(delayedUpCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		if (!(( !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0)))&& !(((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 99 - spin2.pml:32 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 105 - spin2.pml:80 - [(!((carType<=4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		if (!( !((((int)((P0 *)this)->carType)<=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 106 - spin2.pml:67 - [((entryExitProtocol>0))] (109:0:1 - 1)
		IfNotBlocked
		reached[0][106] = 1;
		if (!((now.entryExitProtocol>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(0, 107, 109) */
		reached[0][107] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 72: // STATE 109 - spin2.pml:68 - [temp = downCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.downCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 110 - spin2.pml:68 - [downCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][110] = 1;
		(trpt+1)->bup.oval = now.downCarsCount;
		now.downCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("downCarsCount", now.downCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 111 - spin2.pml:22 - [(((upCarsCount==0)&&(delayedDownCarsCount>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (!(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 112 - spin2.pml:23 - [temp = delayedDownCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedDownCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 113 - spin2.pml:23 - [delayedDownCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		(trpt+1)->bup.oval = now.delayedDownCarsCount;
		now.delayedDownCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedDownCarsCount", now.delayedDownCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 114 - spin2.pml:24 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		(trpt+1)->bup.oval = now.waitDownCars;
		now.waitDownCars = (now.waitDownCars+1);
#ifdef VAR_RANGES
		logval("waitDownCars", now.waitDownCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 116 - spin2.pml:27 - [((((downCarsCount==0)&&(delayedUpCarsCount>0))&&!(((upCarsCount==0)&&(delayedDownCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][116] = 1;
		if (!((((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))&& !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 117 - spin2.pml:28 - [temp = delayedUpCarsCount] (0:0:1 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.delayedUpCarsCount;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 118 - spin2.pml:28 - [delayedUpCarsCount = (temp-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		(trpt+1)->bup.oval = now.delayedUpCarsCount;
		now.delayedUpCarsCount = (((P0 *)this)->temp-1);
#ifdef VAR_RANGES
		logval("delayedUpCarsCount", now.delayedUpCarsCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 119 - spin2.pml:29 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		(trpt+1)->bup.oval = now.waitUpCars;
		now.waitUpCars = (now.waitUpCars+1);
#ifdef VAR_RANGES
		logval("waitUpCars", now.waitUpCars);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 121 - spin2.pml:31 - [((!(((upCarsCount==0)&&(delayedDownCarsCount>0)))&&!(((downCarsCount==0)&&(delayedUpCarsCount>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		if (!(( !(((now.upCarsCount==0)&&(now.delayedDownCarsCount>0)))&& !(((now.downCarsCount==0)&&(now.delayedUpCarsCount>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 122 - spin2.pml:32 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][122] = 1;
		(trpt+1)->bup.oval = now.entryExitProtocol;
		now.entryExitProtocol = (now.entryExitProtocol+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", now.entryExitProtocol);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 134 - spin2.pml:100 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

