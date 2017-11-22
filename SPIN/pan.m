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

		 /* CLAIM livenessProperty */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((!(!((((isInBarrier[0]&&isInBarrier[1])&&isInBarrier[2])&&((roundCount[0]==roundCount[1])&&(roundCount[0]==roundCount[2])))))&&!((Car[carPID[2]]._p==afterBarrier))))] (0:0:0 - 1)
		
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
		reached[2][1] = 1;
		if (!(( !( !((((((int)now.isInBarrier[0])&&((int)now.isInBarrier[1]))&&((int)now.isInBarrier[2]))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[0]==now.roundCount[2])))))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==67)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:4 - [((!(!((((isInBarrier[0]&&isInBarrier[1])&&isInBarrier[2])&&((roundCount[0]==roundCount[1])&&(roundCount[0]==roundCount[2])))))&&!((Car[carPID[1]]._p==afterBarrier))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][3] = 1;
		if (!(( !( !((((((int)now.isInBarrier[0])&&((int)now.isInBarrier[1]))&&((int)now.isInBarrier[2]))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[0]==now.roundCount[2])))))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==67)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:5 - [((!(!((((isInBarrier[0]&&isInBarrier[1])&&isInBarrier[2])&&((roundCount[0]==roundCount[1])&&(roundCount[0]==roundCount[2])))))&&!((Car[carPID[0]]._p==afterBarrier))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][5] = 1;
		if (!(( !( !((((((int)now.isInBarrier[0])&&((int)now.isInBarrier[1]))&&((int)now.isInBarrier[2]))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[0]==now.roundCount[2])))))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==67)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 12 - _spin_nvr.tmp:10 - [(!((Car[carPID[2]]._p==afterBarrier)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][12] = 1;
		if (!( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==67))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 17 - _spin_nvr.tmp:14 - [(!((Car[carPID[1]]._p==afterBarrier)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][17] = 1;
		if (!( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==67))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 22 - _spin_nvr.tmp:18 - [(!((Car[carPID[0]]._p==afterBarrier)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][22] = 1;
		if (!( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==67))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 27 - _spin_nvr.tmp:20 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 10: // STATE 11 - Part3-a.pml:74 - [roundCount[num] = (roundCount[num]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.roundCount[ Index(((int)((P1 *)this)->num), 3) ];
		now.roundCount[ Index(((P1 *)this)->num, 3) ] = (now.roundCount[ Index(((int)((P1 *)this)->num), 3) ]+1);
#ifdef VAR_RANGES
		logval("roundCount[Car:num]", now.roundCount[ Index(((int)((P1 *)this)->num), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 12 - Part3-a.pml:75 - [isInBarrier[num] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]);
		now.isInBarrier[ Index(((P1 *)this)->num, 3) ] = 1;
#ifdef VAR_RANGES
		logval("isInBarrier[Car:num]", ((int)now.isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - Part3-a.pml:78 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 15 - Part3-a.pml:79 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 19 - Part3-a.pml:82 - [((entryExitProtocol>0))] (30:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(30, 20, 30) */
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(30, 22, 30) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 24 - Part3-a.pml:84 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 25 - Part3-a.pml:85 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 28 - Part3-a.pml:87 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 32 - Part3-a.pml:90 - [temp = (numberCarsAtBarrier+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 33 - Part3-a.pml:91 - [numberCarsAtBarrier = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 34 - Part3-a.pml:94 - [((numberCarsAtBarrier==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!((((int)now.numberCarsAtBarrier)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 35 - Part3-a.pml:95 - [temp = (numberCarsAtBarrier-2)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsAtBarrier)-2);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 36 - Part3-a.pml:96 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 37 - Part3-a.pml:97 - [numberCarsAtBarrier = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = 0;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 38 - Part3-a.pml:98 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 41 - Part3-a.pml:100 - [(!((numberCarsAtBarrier==3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!( !((((int)now.numberCarsAtBarrier)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 45 - Part3-a.pml:103 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 47 - Part3-a.pml:104 - [((awaitAllCarsAtBarrier>0))] (60:0:1 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!((((int)now.awaitAllCarsAtBarrier)>0)))
			continue;
		/* merge: awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier-1)(60, 48, 60) */
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)-1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		/* merge: .(goto)(60, 50, 60) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 52 - Part3-a.pml:106 - [((numberCarsToAwake>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((((int)now.numberCarsToAwake)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 53 - Part3-a.pml:107 - [temp = (numberCarsToAwake-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsToAwake)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 54 - Part3-a.pml:108 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 55 - Part3-a.pml:109 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 58 - Part3-a.pml:111 - [(!((numberCarsToAwake>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		if (!( !((((int)now.numberCarsToAwake)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 62 - Part3-a.pml:114 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 65 - Part3-a.pml:119 - [isInBarrier[num] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)now.isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]);
		now.isInBarrier[ Index(((P1 *)this)->num, 3) ] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[Car:num]", ((int)now.isInBarrier[ Index(((int)((P1 *)this)->num), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 71 - Part3-a.pml:127 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 36: // STATE 1 - Part3-a.pml:37 - [carPID[0] = run Car(1,0)] (0:11:9 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(9);
		(trpt+1)->bup.ovals[0] = ((int)now.carPID[0]);
		now.carPID[0] = addproc(II, 1, 1, 1, 0);
#ifdef VAR_RANGES
		logval("carPID[0]", ((int)now.carPID[0]));
#endif
		;
		/* merge: carPID[1] = run Car(1,1)(11, 2, 11) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.carPID[1]);
		now.carPID[1] = addproc(II, 1, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[1]", ((int)now.carPID[1]));
#endif
		;
		/* merge: carPID[2] = run Car(1,2)(11, 3, 11) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.carPID[2]);
		now.carPID[2] = addproc(II, 1, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[2]", ((int)now.carPID[2]));
#endif
		;
		/* merge: isInBarrier[0] = 0(11, 4, 11) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.isInBarrier[0]);
		now.isInBarrier[0] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[0]", ((int)now.isInBarrier[0]));
#endif
		;
		/* merge: isInBarrier[1] = 0(11, 5, 11) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.isInBarrier[1]);
		now.isInBarrier[1] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[1]", ((int)now.isInBarrier[1]));
#endif
		;
		/* merge: isInBarrier[2] = 0(11, 6, 11) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.isInBarrier[2]);
		now.isInBarrier[2] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[2]", ((int)now.isInBarrier[2]));
#endif
		;
		/* merge: roundCount[0] = 0(11, 7, 11) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[6] = now.roundCount[0];
		now.roundCount[0] = 0;
#ifdef VAR_RANGES
		logval("roundCount[0]", now.roundCount[0]);
#endif
		;
		/* merge: roundCount[1] = 0(11, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[7] = now.roundCount[1];
		now.roundCount[1] = 0;
#ifdef VAR_RANGES
		logval("roundCount[1]", now.roundCount[1]);
#endif
		;
		/* merge: roundCount[2] = 0(11, 9, 11) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[8] = now.roundCount[2];
		now.roundCount[2] = 0;
#ifdef VAR_RANGES
		logval("roundCount[2]", now.roundCount[2]);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 37: // STATE 11 - Part3-a.pml:50 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
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

