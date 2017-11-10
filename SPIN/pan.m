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

		 /* CLAIM passBarrier */
	case 3: // STATE 1 - _spin_nvr.tmp:20 - [(((!((Car[carPID[1]]._p==afterBarrier))&&(isInBarrier[carPID[1]]&&(numberCarsAtBarrier==2)))&&isOn))] (0:0:0 - 1)
		
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
		if (!((( !((((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==63))&&(((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ])&&(((int)now.numberCarsAtBarrier)==2)))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:25 - [((!((Car[carPID[1]]._p==afterBarrier))&&isOn))] (0:0:0 - 1)
		
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
		if (!(( !((((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==63))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:27 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM notPassBarrier */
	case 6: // STATE 1 - _spin_nvr.tmp:3 - [(((!((isInBarrier[carPID[1]]&&isInBarrier[carPID[2]]))&&(Car[carPID[1]]._p==afterBarrier))&&isOn))] (0:0:0 - 1)
		
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
		if (!((( !((((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ])&&((int)now.isInBarrier[ Index(((int)now.carPID[2]), 4) ])))&&(((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==63))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - _spin_nvr.tmp:4 - [((!((isInBarrier[carPID[1]]&&isInBarrier[carPID[2]]))&&isOn))] (0:0:0 - 1)
		
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
		reached[3][3] = 1;
		if (!(( !((((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ])&&((int)now.isInBarrier[ Index(((int)now.carPID[2]), 4) ])))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 10 - _spin_nvr.tmp:9 - [((!((isInBarrier[carPID[1]]&&isInBarrier[carPID[2]]))&&isOn))] (0:0:0 - 1)
		
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
		if (!(( !((((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ])&&((int)now.isInBarrier[ Index(((int)now.carPID[2]), 4) ])))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 15 - _spin_nvr.tmp:13 - [(((!((isInBarrier[carPID[1]]&&isInBarrier[carPID[2]]))&&(Car[carPID[1]]._p==afterBarrier))&&isOn))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][15] = 1;
		if (!((( !((((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ])&&((int)now.isInBarrier[ Index(((int)now.carPID[2]), 4) ])))&&(((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==63))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 17 - _spin_nvr.tmp:14 - [((!((isInBarrier[carPID[1]]&&isInBarrier[carPID[2]]))&&isOn))] (0:0:0 - 1)
		
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
		reached[3][17] = 1;
		if (!(( !((((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ])&&((int)now.isInBarrier[ Index(((int)now.carPID[2]), 4) ])))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 22 - _spin_nvr.tmp:16 - [-end-] (0:0:0 - 1)
		
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
		reached[3][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 12: // STATE 11 - Part3-a.pml:113 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 13 - Part3-a.pml:114 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 17 - Part3-a.pml:117 - [((entryExitProtocol>0))] (28:0:1 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(28, 18, 28) */
		reached[2][18] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(28, 20, 28) */
		reached[2][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 22 - Part3-a.pml:119 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 23 - Part3-a.pml:120 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 26 - Part3-a.pml:122 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 30 - Part3-a.pml:125 - [temp = (numberCarsAtBarrier+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[2][30] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->temp;
		((P2 *)this)->temp = (((int)now.numberCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P2 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 31 - Part3-a.pml:126 - [numberCarsAtBarrier = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = ((P2 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 32 - Part3-a.pml:127 - [isInBarrier[_pid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		(trpt+1)->bup.oval = ((int)now.isInBarrier[ Index(((int)((P2 *)this)->_pid), 4) ]);
		now.isInBarrier[ Index(((P2 *)this)->_pid, 4) ] = 1;
#ifdef VAR_RANGES
		logval("isInBarrier[_pid]", ((int)now.isInBarrier[ Index(((int)((P2 *)this)->_pid), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 33 - Part3-a.pml:130 - [((numberCarsAtBarrier==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		if (!((((int)now.numberCarsAtBarrier)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 34 - Part3-a.pml:131 - [temp = (numberCarsAtBarrier-2)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->temp;
		((P2 *)this)->temp = (((int)now.numberCarsAtBarrier)-2);
#ifdef VAR_RANGES
		logval("Car:temp", ((P2 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 35 - Part3-a.pml:132 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P2 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 36 - Part3-a.pml:133 - [numberCarsAtBarrier = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = 0;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 37 - Part3-a.pml:134 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 40 - Part3-a.pml:136 - [(!((numberCarsAtBarrier==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		if (!( !((((int)now.numberCarsAtBarrier)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 44 - Part3-a.pml:139 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 46 - Part3-a.pml:140 - [((awaitAllCarsAtBarrier>0))] (58:0:1 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		if (!((((int)now.awaitAllCarsAtBarrier)>0)))
			continue;
		/* merge: awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier-1)(58, 47, 58) */
		reached[2][47] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)-1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		/* merge: .(goto)(58, 49, 58) */
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 29: // STATE 51 - Part3-a.pml:142 - [((numberCarsToAwake>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!((((int)now.numberCarsToAwake)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 52 - Part3-a.pml:143 - [temp = (numberCarsToAwake-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->temp;
		((P2 *)this)->temp = (((int)now.numberCarsToAwake)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P2 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 53 - Part3-a.pml:144 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[2][53] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P2 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 54 - Part3-a.pml:145 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][54] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 56 - Part3-a.pml:147 - [(!((numberCarsToAwake>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][56] = 1;
		if (!( !((((int)now.numberCarsToAwake)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 60 - Part3-a.pml:150 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][60] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 63 - Part3-a.pml:158 - [isInBarrier[_pid] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		(trpt+1)->bup.oval = ((int)now.isInBarrier[ Index(((int)((P2 *)this)->_pid), 4) ]);
		now.isInBarrier[ Index(((P2 *)this)->_pid, 4) ] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[_pid]", ((int)now.isInBarrier[ Index(((int)((P2 *)this)->_pid), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 74 - Part3-a.pml:167 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][74] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CarController */
	case 37: // STATE 1 - Part3-a.pml:57 - [isOn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.isOn);
		now.isOn = 1;
#ifdef VAR_RANGES
		logval("isOn", ((int)now.isOn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 2 - Part3-a.pml:87 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 39: // STATE 1 - Part3-a.pml:40 - [carPID[1] = run Car(1)] (0:6:4 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.carPID[1]);
		now.carPID[1] = addproc(II, 1, 2, 1);
#ifdef VAR_RANGES
		logval("carPID[1]", ((int)now.carPID[1]));
#endif
		;
		/* merge: carPID[2] = run Car(1)(6, 2, 6) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.carPID[2]);
		now.carPID[2] = addproc(II, 1, 2, 1);
#ifdef VAR_RANGES
		logval("carPID[2]", ((int)now.carPID[2]));
#endif
		;
		/* merge: isInBarrier[carPID[1]] = 0(6, 3, 6) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ]);
		now.isInBarrier[ Index(now.carPID[1], 4) ] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[carPID[1]]", ((int)now.isInBarrier[ Index(((int)now.carPID[1]), 4) ]));
#endif
		;
		/* merge: isInBarrier[carPID[2]] = 0(6, 4, 6) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.isInBarrier[ Index(((int)now.carPID[2]), 4) ]);
		now.isInBarrier[ Index(now.carPID[2], 4) ] = 0;
#ifdef VAR_RANGES
		logval("isInBarrier[carPID[2]]", ((int)now.isInBarrier[ Index(((int)now.carPID[2]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 40: // STATE 6 - Part3-a.pml:51 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
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

