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

		 /* CLAIM obl0 */
	case 3: // STATE 1 - _spin_nvr.tmp:12 - [((!(!((Car[carPID[0]]._p==barrierEntry)))&&!((Car[carPID[0]]._p==afterBarrier))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==17)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==72)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:17 - [(!((Car[carPID[0]]._p==afterBarrier)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==72))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM test2 */
	case 6: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry)))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==17)&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==17))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==17))))))
			continue;
		/* merge: assert(!(!(!((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry))))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==17)&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==17))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==17))))), " !( !( !((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Check_noGreaterDifference */
	case 8: // STATE 1 - Part3-a.pml:147 - [minValue = 2147483647] (0:17:4 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->_3_9_minValue;
		((P2 *)this)->_3_9_minValue = 2147483647;
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:minValue", ((P2 *)this)->_3_9_minValue);
#endif
		;
		/* merge: maxValue = 0(17, 2, 17) */
		reached[2][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->_3_9_maxValue;
		((P2 *)this)->_3_9_maxValue = 0;
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:maxValue", ((P2 *)this)->_3_9_maxValue);
#endif
		;
		/* merge: i = 0(17, 3, 17) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)this)->_3_9_i;
		((P2 *)this)->_3_9_i = 0;
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:i", ((P2 *)this)->_3_9_i);
#endif
		;
		/* merge: i = 0(17, 4, 17) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)this)->_3_9_i;
		((P2 *)this)->_3_9_i = 0;
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:i", ((P2 *)this)->_3_9_i);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[2][18] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 9: // STATE 5 - Part3-a.pml:149 - [((i<=(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!((((P2 *)this)->_3_9_i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - Part3-a.pml:151 - [((roundCount[i]<minValue))] (17:0:3 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (!((now.roundCount[ Index(((P2 *)this)->_3_9_i, 3) ]<((P2 *)this)->_3_9_minValue)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_9_minValue */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->_3_9_minValue;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->_3_9_minValue = 0;
		/* merge: minValue = roundCount[i](17, 7, 17) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->_3_9_minValue;
		((P2 *)this)->_3_9_minValue = now.roundCount[ Index(((P2 *)this)->_3_9_i, 3) ];
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:minValue", ((P2 *)this)->_3_9_minValue);
#endif
		;
		/* merge: .(goto)(17, 13, 17) */
		reached[2][13] = 1;
		;
		/* merge: i = (i+1)(17, 14, 17) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)this)->_3_9_i;
		((P2 *)this)->_3_9_i = (((P2 *)this)->_3_9_i+1);
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:i", ((P2 *)this)->_3_9_i);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[2][18] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 11: // STATE 8 - Part3-a.pml:152 - [((roundCount[i]>maxValue))] (17:0:3 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!((now.roundCount[ Index(((P2 *)this)->_3_9_i, 3) ]>((P2 *)this)->_3_9_maxValue)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_9_maxValue */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->_3_9_maxValue;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->_3_9_maxValue = 0;
		/* merge: maxValue = roundCount[i](17, 9, 17) */
		reached[2][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->_3_9_maxValue;
		((P2 *)this)->_3_9_maxValue = now.roundCount[ Index(((P2 *)this)->_3_9_i, 3) ];
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:maxValue", ((P2 *)this)->_3_9_maxValue);
#endif
		;
		/* merge: .(goto)(17, 13, 17) */
		reached[2][13] = 1;
		;
		/* merge: i = (i+1)(17, 14, 17) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)this)->_3_9_i;
		((P2 *)this)->_3_9_i = (((P2 *)this)->_3_9_i+1);
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:i", ((P2 *)this)->_3_9_i);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[2][18] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 12: // STATE 10 - Part3-a.pml:153 - [(!(((roundCount[i]<minValue)||(roundCount[i]>maxValue))))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!( !(((now.roundCount[ Index(((P2 *)this)->_3_9_i, 3) ]<((P2 *)this)->_3_9_minValue)||(now.roundCount[ Index(((P2 *)this)->_3_9_i, 3) ]>((P2 *)this)->_3_9_maxValue)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - Part3-a.pml:153 - [(1)] (17:0:1 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(17, 13, 17) */
		reached[2][13] = 1;
		;
		/* merge: i = (i+1)(17, 14, 17) */
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->_3_9_i;
		((P2 *)this)->_3_9_i = (((P2 *)this)->_3_9_i+1);
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:i", ((P2 *)this)->_3_9_i);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[2][18] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 14: // STATE 14 - Part3-a.pml:149 - [i = (i+1)] (0:17:1 - 4)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->_3_9_i;
		((P2 *)this)->_3_9_i = (((P2 *)this)->_3_9_i+1);
#ifdef VAR_RANGES
		logval("Check_noGreaterDifference:i", ((P2 *)this)->_3_9_i);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[2][18] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 15: // STATE 20 - Part3-a.pml:156 - [assert(((maxValue-minValue)<=1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		spin_assert(((((P2 *)this)->_3_9_maxValue-((P2 *)this)->_3_9_minValue)<=1), "((maxValue-minValue)<=1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 25 - Part3-a.pml:159 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 17: // STATE 18 - Part3-a.pml:84 - [roundCount[num] = (roundCount[num]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = now.roundCount[ Index(((int)((P1 *)this)->num), 3) ];
		now.roundCount[ Index(((P1 *)this)->num, 3) ] = (now.roundCount[ Index(((int)((P1 *)this)->num), 3) ]+1);
#ifdef VAR_RANGES
		logval("roundCount[Car:num]", now.roundCount[ Index(((int)((P1 *)this)->num), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 19 - Part3-a.pml:87 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 21 - Part3-a.pml:88 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 25 - Part3-a.pml:91 - [((entryExitProtocol>0))] (36:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(36, 26, 36) */
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(36, 28, 36) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 30 - Part3-a.pml:93 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 31 - Part3-a.pml:94 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 34 - Part3-a.pml:96 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 38 - Part3-a.pml:99 - [temp = (numberCarsAtBarrier+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 39 - Part3-a.pml:100 - [numberCarsAtBarrier = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 40 - Part3-a.pml:101 - [isInBarrier[num] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]);
		isInBarrier[ Index(((P1 *)this)->num, 3) ] = 1;
#ifdef VAR_RANGES
		logval("isInBarrier[Car:num]", ((int)isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 41 - Part3-a.pml:104 - [((numberCarsAtBarrier==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!((((int)now.numberCarsAtBarrier)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 42 - Part3-a.pml:105 - [temp = (numberCarsAtBarrier-2)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsAtBarrier)-2);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 43 - Part3-a.pml:106 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 44 - Part3-a.pml:107 - [numberCarsAtBarrier = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = 0;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 45 - Part3-a.pml:108 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 48 - Part3-a.pml:110 - [(!((numberCarsAtBarrier==3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		if (!( !((((int)now.numberCarsAtBarrier)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 52 - Part3-a.pml:113 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 54 - Part3-a.pml:114 - [((awaitAllCarsAtBarrier>0))] (67:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((((int)now.awaitAllCarsAtBarrier)>0)))
			continue;
		/* merge: awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier-1)(67, 55, 67) */
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)-1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		/* merge: .(goto)(67, 57, 67) */
		reached[1][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 35: // STATE 59 - Part3-a.pml:116 - [((numberCarsToAwake>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((int)now.numberCarsToAwake)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 60 - Part3-a.pml:117 - [temp = (numberCarsToAwake-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsToAwake)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 61 - Part3-a.pml:118 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 62 - Part3-a.pml:119 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 65 - Part3-a.pml:121 - [(!((numberCarsToAwake>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		if (!( !((((int)now.numberCarsToAwake)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 69 - Part3-a.pml:124 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 72 - Part3-a.pml:132 - [isInBarrier[num] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		(trpt+1)->bup.oval = ((int)isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]);
		isInBarrier[ Index(((P1 *)this)->num, 3) ] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[Car:num]", ((int)isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 83 - Part3-a.pml:141 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 43: // STATE 1 - Part3-a.pml:40 - [carPID[0] = run Car(1,0)] (0:10:9 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = ((int)now.carPID[0]);
		now.carPID[0] = addproc(II, 1, 1, 1, 0);
#ifdef VAR_RANGES
		logval("carPID[0]", ((int)now.carPID[0]));
#endif
		;
		/* merge: carPID[1] = run Car(1,1)(10, 2, 10) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.carPID[1]);
		now.carPID[1] = addproc(II, 1, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[1]", ((int)now.carPID[1]));
#endif
		;
		/* merge: carPID[2] = run Car(1,2)(10, 3, 10) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.carPID[2]);
		now.carPID[2] = addproc(II, 1, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[2]", ((int)now.carPID[2]));
#endif
		;
		/* merge: isInBarrier[0] = 0(10, 4, 10) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((int)isInBarrier[0]);
		isInBarrier[0] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[0]", ((int)isInBarrier[0]));
#endif
		;
		/* merge: isInBarrier[1] = 0(10, 5, 10) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = ((int)isInBarrier[1]);
		isInBarrier[1] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[1]", ((int)isInBarrier[1]));
#endif
		;
		/* merge: isInBarrier[2] = 0(10, 6, 10) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[5] = ((int)isInBarrier[2]);
		isInBarrier[2] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[2]", ((int)isInBarrier[2]));
#endif
		;
		/* merge: roundCount[0] = 0(10, 7, 10) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[6] = now.roundCount[0];
		now.roundCount[0] = 0;
#ifdef VAR_RANGES
		logval("roundCount[0]", now.roundCount[0]);
#endif
		;
		/* merge: roundCount[1] = 0(10, 8, 10) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[7] = now.roundCount[1];
		now.roundCount[1] = 0;
#ifdef VAR_RANGES
		logval("roundCount[1]", now.roundCount[1]);
#endif
		;
		/* merge: roundCount[2] = 0(10, 9, 10) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[8] = now.roundCount[2];
		now.roundCount[2] = 0;
#ifdef VAR_RANGES
		logval("roundCount[2]", now.roundCount[2]);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 44: // STATE 10 - Part3-a.pml:54 - [(run Check_noGreaterDifference())] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(addproc(II, 1, 2, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 12 - Part3-a.pml:56 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
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

