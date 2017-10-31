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
	case 3: // STATE 1 - _spin_nvr.tmp:20 - [(((!(isOn)&&!((Car[carPID[1]]._p==afterBarrier)))&&(Car[carPID[1]]._p==barrierEntry)))] (0:0:0 - 1)
		
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
		if (!((( !(((int)now.isOn))&& !((((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==55)))&&(((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:25 - [((!(isOn)&&!((Car[carPID[1]]._p==afterBarrier))))] (0:0:0 - 1)
		
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
		if (!(( !(((int)now.isOn))&& !((((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==55)))))
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
	case 6: // STATE 1 - _spin_nvr.tmp:3 - [(((!((Car[carPID[1]]._p==afterBarrier))&&(Car[carPID[1]]._p==barrierEntry))&&isOn))] (0:0:0 - 1)
		
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
		if (!((( !((((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==55))&&(((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - _spin_nvr.tmp:4 - [(((Car[carPID[1]]._p==barrierEntry)&&isOn))] (0:0:0 - 1)
		
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
		if (!(((((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10)&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 10 - _spin_nvr.tmp:9 - [(isOn)] (0:0:0 - 1)
		
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
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 15 - _spin_nvr.tmp:13 - [((!((Car[carPID[1]]._p==afterBarrier))&&isOn))] (0:0:0 - 1)
		
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
		if (!(( !((((int)((P2 *)Pptr(BASE+((int)now.carPID[1])))->_p)==55))&&((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 17 - _spin_nvr.tmp:14 - [(isOn)] (0:0:0 - 1)
		
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
		if (!(((int)now.isOn)))
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
	case 12: // STATE 11 - Part3-a.pml:104 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 12 - Part3-a.pml:105 - [((entryExitProtocol>0))] (49:0:1 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(49, 13, 49) */
		reached[2][13] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(49, 15, 49) */
		reached[2][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 17 - Part3-a.pml:107 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 18 - Part3-a.pml:108 - [temp = (numberCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->temp;
		((P2 *)this)->temp = (((int)now.numberCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P2 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 19 - Part3-a.pml:109 - [numberCarsAtBarrier = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = ((P2 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 20 - Part3-a.pml:111 - [((numberCarsAtBarrier==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		if (!((((int)now.numberCarsAtBarrier)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 21 - Part3-a.pml:112 - [temp = (numberCarsAtBarrier-2)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->temp;
		((P2 *)this)->temp = (((int)now.numberCarsAtBarrier)-2);
#ifdef VAR_RANGES
		logval("Car:temp", ((P2 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 22 - Part3-a.pml:113 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P2 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 23 - Part3-a.pml:114 - [numberCarsAtBarrier = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = 0;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 24 - Part3-a.pml:115 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 26 - Part3-a.pml:117 - [(!((numberCarsAtBarrier==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!( !((((int)now.numberCarsAtBarrier)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 27 - Part3-a.pml:118 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 29 - Part3-a.pml:119 - [((awaitAllCarsAtBarrier>0))] (42:0:1 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!((((int)now.awaitAllCarsAtBarrier)>0)))
			continue;
		/* merge: awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier-1)(42, 30, 42) */
		reached[2][30] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)-1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		/* merge: .(goto)(42, 32, 42) */
		reached[2][32] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 34 - Part3-a.pml:121 - [((numberCarsToAwake>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		if (!((((int)now.numberCarsToAwake)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 35 - Part3-a.pml:122 - [temp = (numberCarsToAwake-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->temp;
		((P2 *)this)->temp = (((int)now.numberCarsToAwake)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P2 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 36 - Part3-a.pml:123 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P2 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 37 - Part3-a.pml:124 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 39 - Part3-a.pml:126 - [(!((numberCarsToAwake>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][39] = 1;
		if (!( !((((int)now.numberCarsToAwake)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 40 - Part3-a.pml:127 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 46 - Part3-a.pml:131 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 47 - Part3-a.pml:132 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 51 - Part3-a.pml:138 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 66 - Part3-a.pml:155 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CarController */
	case 35: // STATE 2 - Part3-a.pml:54 - [((onOffSwitch>0))] (7:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.onOffSwitch)>0)))
			continue;
		/* merge: onOffSwitch = (onOffSwitch-1)(7, 3, 7) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.onOffSwitch);
		now.onOffSwitch = (((int)now.onOffSwitch)-1);
#ifdef VAR_RANGES
		logval("onOffSwitch", ((int)now.onOffSwitch));
#endif
		;
		/* merge: .(goto)(7, 5, 7) */
		reached[1][5] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 7 - Part3-a.pml:55 - [isOn = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.isOn);
		now.isOn = 1;
#ifdef VAR_RANGES
		logval("isOn", ((int)now.isOn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 8 - Part3-a.pml:56 - [onOffSwitch = (onOffSwitch+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.onOffSwitch);
		now.onOffSwitch = (((int)now.onOffSwitch)+1);
#ifdef VAR_RANGES
		logval("onOffSwitch", ((int)now.onOffSwitch));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 11 - Part3-a.pml:59 - [((onOffSwitch>0))] (16:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)now.onOffSwitch)>0)))
			continue;
		/* merge: onOffSwitch = (onOffSwitch-1)(16, 12, 16) */
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.onOffSwitch);
		now.onOffSwitch = (((int)now.onOffSwitch)-1);
#ifdef VAR_RANGES
		logval("onOffSwitch", ((int)now.onOffSwitch));
#endif
		;
		/* merge: .(goto)(16, 14, 16) */
		reached[1][14] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 16 - Part3-a.pml:60 - [isOn = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.isOn);
		now.isOn = 0;
#ifdef VAR_RANGES
		logval("isOn", ((int)now.isOn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 17 - Part3-a.pml:61 - [((entryExitProtocol>0))] (35:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(35, 18, 35) */
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(35, 20, 35) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 22 - Part3-a.pml:64 - [((numberCarsAtBarrier>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!((((int)now.numberCarsAtBarrier)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 23 - Part3-a.pml:65 - [temp = (numberCarsAtBarrier-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsAtBarrier)-1);
#ifdef VAR_RANGES
		logval("CarController:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 24 - Part3-a.pml:66 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 25 - Part3-a.pml:67 - [numberCarsAtBarrier = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = 0;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 26 - Part3-a.pml:68 - [onOffSwitch = (onOffSwitch+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.onOffSwitch);
		now.onOffSwitch = (((int)now.onOffSwitch)+1);
#ifdef VAR_RANGES
		logval("onOffSwitch", ((int)now.onOffSwitch));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 28 - Part3-a.pml:69 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 30 - Part3-a.pml:71 - [(!((numberCarsAtBarrier>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!( !((((int)now.numberCarsAtBarrier)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 31 - Part3-a.pml:72 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 33 - Part3-a.pml:73 - [onOffSwitch = (onOffSwitch+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((int)now.onOffSwitch);
		now.onOffSwitch = (((int)now.onOffSwitch)+1);
#ifdef VAR_RANGES
		logval("onOffSwitch", ((int)now.onOffSwitch));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 40 - Part3-a.pml:79 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 51: // STATE 1 - Part3-a.pml:37 - [carPID[1] = run Car(1)] (0:4:2 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.carPID[1]);
		now.carPID[1] = addproc(II, 1, 2, 1);
#ifdef VAR_RANGES
		logval("carPID[1]", ((int)now.carPID[1]));
#endif
		;
		/* merge: carPID[2] = run Car(1)(4, 2, 4) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.carPID[2]);
		now.carPID[2] = addproc(II, 1, 2, 1);
#ifdef VAR_RANGES
		logval("carPID[2]", ((int)now.carPID[2]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 52: // STATE 4 - Part3-a.pml:46 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
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

