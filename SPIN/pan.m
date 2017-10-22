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

		 /* CLAIM res */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((((((Car[carPID[1]]._p==entryUp)||(Car[carPID[2]]._p==entryUp))||(Car[carPID[3]]._p==entryUp))||(Car[carPID[5]]._p==entryDown))||(Car[carPID[6]]._p==entryDown))||(Car[carPID[7]]._p==entryDown))))&&!(((((((Car[carPID[1]]._p==critUp)||(Car[carPID[2]]._p==critUp))||(Car[carPID[3]]._p==critUp))||(Car[carPID[5]]._p==critDown))||(Car[carPID[6]]._p==critDown))||(Car[carPID[7]]._p==critDown)))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==74)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==74))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[3])))->_p)==74))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==7))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==7))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[7])))->_p)==7))))&& !(((((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==109)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==109))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[3])))->_p)==109))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==42))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==42))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[7])))->_p)==42))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [(!(((((((Car[carPID[1]]._p==critUp)||(Car[carPID[2]]._p==critUp))||(Car[carPID[3]]._p==critUp))||(Car[carPID[5]]._p==critDown))||(Car[carPID[6]]._p==critDown))||(Car[carPID[7]]._p==critDown))))] (0:0:0 - 1)
		
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
		reached[2][8] = 1;
		if (!( !(((((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==109)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==109))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[3])))->_p)==109))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==42))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==42))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[7])))->_p)==42)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 6: // STATE 2 - Part2.pml:74 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - Part2.pml:76 - [((entryExitProtocol>0))] (20:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(20, 4, 20) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(20, 6, 20) */
		reached[1][6] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 8 - Part2.pml:77 - [((noUpCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((int)now.noUpCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 9 - Part2.pml:78 - [temp = (noDelayedDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDelayedDownCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 10 - Part2.pml:79 - [noDelayedDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 11 - Part2.pml:80 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - Part2.pml:81 - [((waitDownCars>0))] (22:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((int)now.waitDownCars)>0)))
			continue;
		/* merge: waitDownCars = (waitDownCars-1)(22, 14, 22) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)-1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		/* merge: .(goto)(22, 16, 22) */
		reached[1][16] = 1;
		;
		/* merge: .(goto)(0, 21, 22) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 18 - Part2.pml:82 - [((noUpCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((int)now.noUpCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 22 - Part2.pml:84 - [temp = (noDownCars+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDownCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 23 - Part2.pml:85 - [noDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 24 - Part2.pml:86 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 25 - Part2.pml:86 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 26 - Part2.pml:86 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 27 - Part2.pml:86 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 28 - Part2.pml:86 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 29 - Part2.pml:86 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 30 - Part2.pml:86 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 31 - Part2.pml:86 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 33 - Part2.pml:86 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((int)((P1 *)this)->condition2)&& !(((int)((P1 *)this)->condition1)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition2 */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->condition2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 34 - Part2.pml:86 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 35 - Part2.pml:86 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 37 - Part2.pml:86 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 38 - Part2.pml:86 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 42 - Part2.pml:88 - [assert(((noUpCars==0)&&(noDownCars>0)))] (0:0:0 - 4)
		IfNotBlocked
		reached[1][42] = 1;
		spin_assert(((((int)now.noUpCars)==0)&&(((int)now.noDownCars)>0)), "((noUpCars==0)&&(noDownCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 44 - Part2.pml:92 - [((entryExitProtocol>0))] (49:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(49, 45, 49) */
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[1][47] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: // STATE 49 - Part2.pml:93 - [temp = (noDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDownCars)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 50 - Part2.pml:94 - [noDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 51 - Part2.pml:95 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 52 - Part2.pml:95 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 53 - Part2.pml:95 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 54 - Part2.pml:95 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 55 - Part2.pml:95 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 56 - Part2.pml:95 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 57 - Part2.pml:95 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 58 - Part2.pml:95 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 60 - Part2.pml:95 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		if (!((((int)((P1 *)this)->condition2)&& !(((int)((P1 *)this)->condition1)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition2 */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->condition2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 61 - Part2.pml:95 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 62 - Part2.pml:95 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 64 - Part2.pml:95 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 65 - Part2.pml:95 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 69 - Part2.pml:96 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 70 - Part2.pml:98 - [((entryExitProtocol>0))] (87:0:1 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(87, 71, 87) */
		reached[1][71] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(87, 73, 87) */
		reached[1][73] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 75 - Part2.pml:99 - [((noDownCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((((int)now.noDownCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 76 - Part2.pml:100 - [temp = (noDelayedUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDelayedUpCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 77 - Part2.pml:101 - [noDelayedUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 78 - Part2.pml:102 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 80 - Part2.pml:103 - [((waitUpCars>0))] (89:0:1 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		if (!((((int)now.waitUpCars)>0)))
			continue;
		/* merge: waitUpCars = (waitUpCars-1)(89, 81, 89) */
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)-1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		/* merge: .(goto)(89, 83, 89) */
		reached[1][83] = 1;
		;
		/* merge: .(goto)(0, 88, 89) */
		reached[1][88] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 53: // STATE 85 - Part2.pml:104 - [((noDownCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		if (!((((int)now.noDownCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 89 - Part2.pml:106 - [temp = (noUpCars+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][89] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noUpCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 90 - Part2.pml:107 - [noUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 91 - Part2.pml:108 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 92 - Part2.pml:108 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 93 - Part2.pml:108 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 94 - Part2.pml:108 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 95 - Part2.pml:108 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 96 - Part2.pml:108 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 97 - Part2.pml:108 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 98 - Part2.pml:108 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 100 - Part2.pml:108 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		if (!((((int)((P1 *)this)->condition2)&& !(((int)((P1 *)this)->condition1)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition2 */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->condition2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 101 - Part2.pml:108 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 102 - Part2.pml:108 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 104 - Part2.pml:108 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 105 - Part2.pml:108 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 109 - Part2.pml:111 - [assert(((noDownCars==0)&&(noUpCars>0)))] (0:0:0 - 4)
		IfNotBlocked
		reached[1][109] = 1;
		spin_assert(((((int)now.noDownCars)==0)&&(((int)now.noUpCars)>0)), "((noDownCars==0)&&(noUpCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 111 - Part2.pml:114 - [((entryExitProtocol>0))] (116:0:1 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(116, 112, 116) */
		reached[1][112] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(116, 114, 116) */
		reached[1][114] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 71: // STATE 116 - Part2.pml:115 - [temp = (noUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noUpCars)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 117 - Part2.pml:116 - [noUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 118 - Part2.pml:117 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 119 - Part2.pml:117 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 120 - Part2.pml:117 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][120] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 121 - Part2.pml:117 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 122 - Part2.pml:117 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 123 - Part2.pml:117 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 124 - Part2.pml:117 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 125 - Part2.pml:117 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 127 - Part2.pml:117 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (!((((int)((P1 *)this)->condition2)&& !(((int)((P1 *)this)->condition1)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition2 */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->condition2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 128 - Part2.pml:117 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 129 - Part2.pml:117 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 131 - Part2.pml:117 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 132 - Part2.pml:117 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][132] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 136 - Part2.pml:118 - [(((type!=1)&&(type!=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][136] = 1;
		if (!(((((int)((P1 *)this)->type)!=1)&&(((int)((P1 *)this)->type)!=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 137 - Part2.pml:120 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][137] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 143 - Part2.pml:123 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][143] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 89: // STATE 1 - Part2.pml:50 - [carPID[1] = run Car(2)] (0:6:4 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.carPID[1]);
		now.carPID[1] = addproc(II, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[1]", ((int)now.carPID[1]));
#endif
		;
		/* merge: carPID[2] = run Car(2)(6, 2, 6) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.carPID[2]);
		now.carPID[2] = addproc(II, 1, 1, 2);
#ifdef VAR_RANGES
		logval("carPID[2]", ((int)now.carPID[2]));
#endif
		;
		/* merge: carPID[5] = run Car(1)(6, 3, 6) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.carPID[5]);
		now.carPID[5] = addproc(II, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[5]", ((int)now.carPID[5]));
#endif
		;
		/* merge: carPID[6] = run Car(1)(6, 4, 6) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.carPID[6]);
		now.carPID[6] = addproc(II, 1, 1, 1);
#ifdef VAR_RANGES
		logval("carPID[6]", ((int)now.carPID[6]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 90: // STATE 6 - Part2.pml:59 - [-end-] (0:0:0 - 1)
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

