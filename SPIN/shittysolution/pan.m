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

		 /* PROC Car */
	case 3: // STATE 2 - Part2.pml:66 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - Part2.pml:68 - [((entryExitProtocol>0))] (19:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(19, 4, 19) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(19, 6, 19) */
		reached[1][6] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 8 - Part2.pml:69 - [((noUpCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((int)now.noUpCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 9 - Part2.pml:70 - [noDelayedDownCars = (noDelayedDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)+1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 10 - Part2.pml:71 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 12 - Part2.pml:72 - [((waitDownCars>0))] (21:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((int)now.waitDownCars)>0)))
			continue;
		/* merge: waitDownCars = (waitDownCars-1)(21, 13, 21) */
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)-1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		/* merge: .(goto)(21, 15, 21) */
		reached[1][15] = 1;
		;
		/* merge: .(goto)(0, 20, 21) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 17 - Part2.pml:73 - [((noUpCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((int)now.noUpCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 21 - Part2.pml:75 - [noDownCars = (noDownCars+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = (((int)now.noDownCars)+1);
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 22 - Part2.pml:76 - [(((noUpCars==0)&&(noDelayedDownCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!(((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 23 - Part2.pml:76 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 24 - Part2.pml:76 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 26 - Part2.pml:76 - [(((noDownCars==0)&&(noDelayedUpCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!(((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 27 - Part2.pml:76 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 28 - Part2.pml:76 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 30 - Part2.pml:76 - [(!((((noUpCars==0)&&(noDelayedDownCars>0))||((noDownCars==0)&&(noDelayedUpCars>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!( !((((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))||((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 31 - Part2.pml:76 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 35 - Part2.pml:78 - [assert(((noUpCars==0)&&(noDownCars>0)))] (0:0:0 - 4)
		IfNotBlocked
		reached[1][35] = 1;
		spin_assert(((((int)now.noUpCars)==0)&&(((int)now.noDownCars)>0)), "((noUpCars==0)&&(noDownCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 37 - Part2.pml:82 - [((entryExitProtocol>0))] (42:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(42, 38, 42) */
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(42, 40, 42) */
		reached[1][40] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 42 - Part2.pml:83 - [noDownCars = (noDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = (((int)now.noDownCars)-1);
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 43 - Part2.pml:84 - [(((noUpCars==0)&&(noDelayedDownCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		if (!(((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 44 - Part2.pml:84 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 45 - Part2.pml:84 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 47 - Part2.pml:84 - [(((noDownCars==0)&&(noDelayedUpCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!(((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 48 - Part2.pml:84 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 49 - Part2.pml:84 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 51 - Part2.pml:84 - [(!((((noUpCars==0)&&(noDelayedDownCars>0))||((noDownCars==0)&&(noDelayedUpCars>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!( !((((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))||((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 52 - Part2.pml:84 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 56 - Part2.pml:85 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 57 - Part2.pml:87 - [((entryExitProtocol>0))] (73:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(73, 58, 73) */
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(73, 60, 73) */
		reached[1][60] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 62 - Part2.pml:88 - [((noDownCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!((((int)now.noDownCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 63 - Part2.pml:89 - [noDelayedUpCars = (noDelayedUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)+1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 64 - Part2.pml:90 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 66 - Part2.pml:91 - [((waitUpCars>0))] (75:0:1 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!((((int)now.waitUpCars)>0)))
			continue;
		/* merge: waitUpCars = (waitUpCars-1)(75, 67, 75) */
		reached[1][67] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)-1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		/* merge: .(goto)(75, 69, 75) */
		reached[1][69] = 1;
		;
		/* merge: .(goto)(0, 74, 75) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 36: // STATE 71 - Part2.pml:92 - [((noDownCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (!((((int)now.noDownCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 75 - Part2.pml:94 - [noUpCars = (noUpCars+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][75] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = (((int)now.noUpCars)+1);
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 76 - Part2.pml:95 - [(((noUpCars==0)&&(noDelayedDownCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!(((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 77 - Part2.pml:95 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 78 - Part2.pml:95 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 80 - Part2.pml:95 - [(((noDownCars==0)&&(noDelayedUpCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		if (!(((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 81 - Part2.pml:95 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 82 - Part2.pml:95 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 84 - Part2.pml:95 - [(!((((noUpCars==0)&&(noDelayedDownCars>0))||((noDownCars==0)&&(noDelayedUpCars>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (!( !((((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))||((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 85 - Part2.pml:95 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 89 - Part2.pml:98 - [assert(((noDownCars==0)&&(noUpCars>0)))] (0:0:0 - 4)
		IfNotBlocked
		reached[1][89] = 1;
		spin_assert(((((int)now.noDownCars)==0)&&(((int)now.noUpCars)>0)), "((noDownCars==0)&&(noUpCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 91 - Part2.pml:101 - [((entryExitProtocol>0))] (96:0:1 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(96, 92, 96) */
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(96, 94, 96) */
		reached[1][94] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 96 - Part2.pml:102 - [noUpCars = (noUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = (((int)now.noUpCars)-1);
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 97 - Part2.pml:103 - [(((noUpCars==0)&&(noDelayedDownCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		if (!(((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 98 - Part2.pml:103 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 99 - Part2.pml:103 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 101 - Part2.pml:103 - [(((noDownCars==0)&&(noDelayedUpCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 102 - Part2.pml:103 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 103 - Part2.pml:103 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 105 - Part2.pml:103 - [(!((((noUpCars==0)&&(noDelayedDownCars>0))||((noDownCars==0)&&(noDelayedUpCars>0)))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!( !((((((int)now.noUpCars)==0)&&(((int)now.noDelayedDownCars)>0))||((((int)now.noDownCars)==0)&&(((int)now.noDelayedUpCars)>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 106 - Part2.pml:103 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 110 - Part2.pml:104 - [(((type!=1)&&(type!=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!(((((int)((P1 *)this)->type)!=1)&&(((int)((P1 *)this)->type)!=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 111 - Part2.pml:106 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 117 - Part2.pml:109 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 60: // STATE 1 - Part2.pml:46 - [carPID[1] = run Car(2)] (0:10:8 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((int)carPID[1]);
		carPID[1] = addproc(II, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[1]", ((int)carPID[1]));
#endif
		;
		/* merge: carPID[2] = run Car(2)(10, 2, 10) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)carPID[2]);
		carPID[2] = addproc(II, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[2]", ((int)carPID[2]));
#endif
		;
		/* merge: carPID[3] = run Car(2)(10, 3, 10) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((int)carPID[3]);
		carPID[3] = addproc(II, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[3]", ((int)carPID[3]));
#endif
		;
		/* merge: carPID[4] = run Car(2)(10, 4, 10) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((int)carPID[4]);
		carPID[4] = addproc(II, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[4]", ((int)carPID[4]));
#endif
		;
		/* merge: carPID[5] = run Car(1)(10, 5, 10) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = ((int)carPID[5]);
		carPID[5] = addproc(II, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[5]", ((int)carPID[5]));
#endif
		;
		/* merge: carPID[6] = run Car(1)(10, 6, 10) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[5] = ((int)carPID[6]);
		carPID[6] = addproc(II, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[6]", ((int)carPID[6]));
#endif
		;
		/* merge: carPID[7] = run Car(1)(10, 7, 10) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[6] = ((int)carPID[7]);
		carPID[7] = addproc(II, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[7]", ((int)carPID[7]));
#endif
		;
		/* merge: carPID[8] = run Car(1)(10, 8, 10) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[7] = ((int)carPID[8]);
		carPID[8] = addproc(II, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[8]", ((int)carPID[8]));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 61: // STATE 10 - Part2.pml:55 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
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

