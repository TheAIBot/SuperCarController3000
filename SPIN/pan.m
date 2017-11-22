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

		 /* CLAIM test */
	case 3: // STATE 1 - _spin_nvr.tmp:33 - [(!(!(((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry))&&((roundCount[0]==roundCount[1])&&(roundCount[1]==roundCount[2]))))))] (6:0:0 - 1)
		
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
		if (!( !( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==10)&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==10))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[1]==now.roundCount[2])))))))
			continue;
		/* merge: assert(!(!(!(((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry))&&((roundCount[0]==roundCount[1])&&(roundCount[1]==roundCount[2])))))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==10)&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==10))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[1]==now.roundCount[2])))))), " !( !( !(((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry))&&((roundCount[0]==roundCount[1])&&(roundCount[1]==roundCount[2]))))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:38 - [-end-] (0:0:0 - 1)
		
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
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM livenessProperty */
	case 5: // STATE 1 - _spin_nvr.tmp:12 - [((!(!(((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry))&&((roundCount[0]==roundCount[1])&&(roundCount[1]==roundCount[2])))))&&!((Car[carPID[2]]._p==afterBarrier))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==10)&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==10))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[1]==now.roundCount[2])))))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==68)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 3 - _spin_nvr.tmp:13 - [((!(!(((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry))&&((roundCount[0]==roundCount[1])&&(roundCount[1]==roundCount[2])))))&&!((Car[carPID[1]]._p==afterBarrier))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==10)&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==10))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[1]==now.roundCount[2])))))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==68)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - _spin_nvr.tmp:14 - [((!(!(((((Car[carPID[0]]._p==barrierEntry)&&(Car[carPID[1]]._p==barrierEntry))&&(Car[carPID[2]]._p==barrierEntry))&&((roundCount[0]==roundCount[1])&&(roundCount[1]==roundCount[2])))))&&!((Car[carPID[0]]._p==afterBarrier))))] (0:0:0 - 1)
		
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
		reached[3][5] = 1;
		if (!(( !( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==10)&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==10))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==10))&&((now.roundCount[0]==now.roundCount[1])&&(now.roundCount[1]==now.roundCount[2])))))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==68)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 12 - _spin_nvr.tmp:19 - [(!((Car[carPID[2]]._p==afterBarrier)))] (0:0:0 - 1)
		
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
		reached[3][12] = 1;
		if (!( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==68))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 17 - _spin_nvr.tmp:23 - [(!((Car[carPID[1]]._p==afterBarrier)))] (0:0:0 - 1)
		
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
		if (!( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==68))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 22 - _spin_nvr.tmp:27 - [(!((Car[carPID[0]]._p==afterBarrier)))] (0:0:0 - 1)
		
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
		if (!( !((((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==68))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 27 - _spin_nvr.tmp:29 - [-end-] (0:0:0 - 1)
		
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
		reached[3][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM safetyProperty */
	case 12: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((((roundCount[0]>roundCount[1])||(roundCount[0]>roundCount[2]))&&(Car[carPID[0]]._p==afterBarrier)))))] (6:0:0 - 1)
		
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
		if (!( !( !((((now.roundCount[0]>now.roundCount[1])||(now.roundCount[0]>now.roundCount[2]))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==68))))))
			continue;
		/* merge: assert(!(!(!((((roundCount[0]>roundCount[1])||(roundCount[0]>roundCount[2]))&&(Car[carPID[0]]._p==afterBarrier))))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !((((now.roundCount[0]>now.roundCount[1])||(now.roundCount[0]>now.roundCount[2]))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[0])))->_p)==68))))), " !( !( !((((roundCount[0]>roundCount[1])||(roundCount[0]>roundCount[2]))&&(Car[carPID[0]]._p==afterBarrier)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 14: // STATE 11 - Part3-a.pml:73 - [roundCount[num] = (roundCount[num]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.roundCount[ Index(((int)((P1 *)this)->num), 3) ];
		now.roundCount[ Index(((P1 *)this)->num, 3) ] = (now.roundCount[ Index(((int)((P1 *)this)->num), 3) ]+1);
#ifdef VAR_RANGES
		logval("roundCount[Car:num]", now.roundCount[ Index(((int)((P1 *)this)->num), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 12 - Part3-a.pml:76 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - Part3-a.pml:77 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 18 - Part3-a.pml:80 - [((entryExitProtocol>0))] (29:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(29, 19, 29) */
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(29, 21, 29) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 23 - Part3-a.pml:82 - [(!(isOn))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!( !(((int)now.isOn))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 24 - Part3-a.pml:83 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 27 - Part3-a.pml:85 - [(isOn)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!(((int)now.isOn)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 31 - Part3-a.pml:88 - [temp = (numberCarsAtBarrier+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 32 - Part3-a.pml:89 - [numberCarsAtBarrier = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 33 - Part3-a.pml:92 - [((numberCarsAtBarrier==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((int)now.numberCarsAtBarrier)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 34 - Part3-a.pml:93 - [temp = (numberCarsAtBarrier-2)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsAtBarrier)-2);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 35 - Part3-a.pml:94 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 36 - Part3-a.pml:95 - [numberCarsAtBarrier = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsAtBarrier);
		now.numberCarsAtBarrier = 0;
#ifdef VAR_RANGES
		logval("numberCarsAtBarrier", ((int)now.numberCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 37 - Part3-a.pml:96 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 40 - Part3-a.pml:98 - [(!((numberCarsAtBarrier==3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!( !((((int)now.numberCarsAtBarrier)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 44 - Part3-a.pml:101 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 46 - Part3-a.pml:102 - [((awaitAllCarsAtBarrier>0))] (59:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!((((int)now.awaitAllCarsAtBarrier)>0)))
			continue;
		/* merge: awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier-1)(59, 47, 59) */
		reached[1][47] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)-1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		/* merge: .(goto)(59, 49, 59) */
		reached[1][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: // STATE 51 - Part3-a.pml:104 - [((numberCarsToAwake>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!((((int)now.numberCarsToAwake)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 52 - Part3-a.pml:105 - [temp = (numberCarsToAwake-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.numberCarsToAwake)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 53 - Part3-a.pml:106 - [numberCarsToAwake = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = ((int)now.numberCarsToAwake);
		now.numberCarsToAwake = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("numberCarsToAwake", ((int)now.numberCarsToAwake));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 54 - Part3-a.pml:107 - [awaitAllCarsAtBarrier = (awaitAllCarsAtBarrier+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)now.awaitAllCarsAtBarrier);
		now.awaitAllCarsAtBarrier = (((int)now.awaitAllCarsAtBarrier)+1);
#ifdef VAR_RANGES
		logval("awaitAllCarsAtBarrier", ((int)now.awaitAllCarsAtBarrier));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 57 - Part3-a.pml:109 - [(!((numberCarsToAwake>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (!( !((((int)now.numberCarsToAwake)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 61 - Part3-a.pml:112 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 74 - Part3-a.pml:127 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 38: // STATE 1 - Part3-a.pml:37 - [carPID[0] = run Car(1,0)] (0:8:6 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.carPID[0]);
		now.carPID[0] = addproc(II, 1, 1, 1, 0);
#ifdef VAR_RANGES
		logval("carPID[0]", ((int)now.carPID[0]));
#endif
		;
		/* merge: carPID[1] = run Car(1,1)(8, 2, 8) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.carPID[1]);
		now.carPID[1] = addproc(II, 1, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[1]", ((int)now.carPID[1]));
#endif
		;
		/* merge: carPID[2] = run Car(1,2)(8, 3, 8) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.carPID[2]);
		now.carPID[2] = addproc(II, 1, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[2]", ((int)now.carPID[2]));
#endif
		;
		/* merge: roundCount[0] = 0(8, 4, 8) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = now.roundCount[0];
		now.roundCount[0] = 0;
#ifdef VAR_RANGES
		logval("roundCount[0]", now.roundCount[0]);
#endif
		;
		/* merge: roundCount[1] = 0(8, 5, 8) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = now.roundCount[1];
		now.roundCount[1] = 0;
#ifdef VAR_RANGES
		logval("roundCount[1]", now.roundCount[1]);
#endif
		;
		/* merge: roundCount[2] = 0(8, 6, 8) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[5] = now.roundCount[2];
		now.roundCount[2] = 0;
#ifdef VAR_RANGES
		logval("roundCount[2]", now.roundCount[2]);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 39: // STATE 8 - Part3-a.pml:49 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
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

