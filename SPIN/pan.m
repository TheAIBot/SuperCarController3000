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
	case 3: // STATE 1 - _spin_nvr.tmp:58 - [((!(!(((((Car[carPID[1]]._p==entry)||(Car[carPID[2]]._p==entry))||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry))))&&!(((((Car[carPID[1]]._p==crit)||(Car[carPID[2]]._p==crit))||(Car[carPID[5]]._p==crit))||(Car[carPID[6]]._p==crit)))))] (0:0:0 - 1)
		
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
		reached[7][1] = 1;
		if (!(( !( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95))))&& !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==103)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==103))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==103))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==103))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:63 - [(!(((((Car[carPID[1]]._p==crit)||(Car[carPID[2]]._p==crit))||(Car[carPID[5]]._p==crit))||(Car[carPID[6]]._p==crit))))] (0:0:0 - 1)
		
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
		reached[7][8] = 1;
		if (!( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==103)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==103))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==103))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==103)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:65 - [-end-] (0:0:0 - 1)
		
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
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM obl6 */
	case 6: // STATE 1 - _spin_nvr.tmp:47 - [(((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[1]]._p==entry)))&&!((Car[carPID[6]]._p==crit)))&&(Car[carPID[6]]._p==entry)))] (0:0:0 - 1)
		
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
		reached[6][1] = 1;
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==103)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:52 - [((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[1]]._p==entry)))&&!((Car[carPID[6]]._p==crit))))] (0:0:0 - 1)
		
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
		reached[6][8] = 1;
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==103)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:54 - [-end-] (0:0:0 - 1)
		
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
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM obl5 */
	case 9: // STATE 1 - _spin_nvr.tmp:36 - [(((!((((Car[carPID[2]]._p==entry)||(Car[carPID[1]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[5]]._p==crit)))&&(Car[carPID[5]]._p==entry)))] (0:0:0 - 1)
		
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
		reached[5][1] = 1;
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==103)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - _spin_nvr.tmp:41 - [((!((((Car[carPID[2]]._p==entry)||(Car[carPID[1]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[5]]._p==crit))))] (0:0:0 - 1)
		
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
		reached[5][8] = 1;
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==103)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - _spin_nvr.tmp:43 - [-end-] (0:0:0 - 1)
		
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
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM obl2 */
	case 12: // STATE 1 - _spin_nvr.tmp:25 - [(((!((((Car[carPID[1]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[2]]._p==crit)))&&(Car[carPID[2]]._p==entry)))] (0:0:0 - 1)
		
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
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==103)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:30 - [((!((((Car[carPID[1]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[2]]._p==crit))))] (0:0:0 - 1)
		
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
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==103)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:32 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM obl1 */
	case 15: // STATE 1 - _spin_nvr.tmp:14 - [(((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[1]]._p==crit)))&&(Car[carPID[1]]._p==entry)))] (0:0:0 - 1)
		
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
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==103)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==95))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:19 - [((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[1]]._p==crit))))] (0:0:0 - 1)
		
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
		reached[3][8] = 1;
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==103)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM testEternalLoop */
	case 18: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))))] (0:0:0 - 1)
		
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
		if (!( !( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==95)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==95))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==95))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
	case 20: // STATE 2 - Part2-pretty.pml:76 - [(1)] (8:0:2 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(1))
			continue;
		/* merge: kage = 3(0, 3, 8) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->kage;
		((P1 *)this)->kage = 3;
#ifdef VAR_RANGES
		logval("Car:kage", ((P1 *)this)->kage);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: kage */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->kage = 0;
		/* merge: .(goto)(0, 9, 8) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 11 - Part2-pretty.pml:90 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 12 - Part2-pretty.pml:91 - [((entryExitProtocol>0))] (31:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(31, 13, 31) */
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(31, 15, 31) */
		reached[1][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 17 - Part2-pretty.pml:92 - [((noUpCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((int)now.noUpCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 18 - Part2-pretty.pml:93 - [temp = (noDelayedDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDelayedDownCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 19 - Part2-pretty.pml:94 - [noDelayedDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 20 - Part2-pretty.pml:95 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 22 - Part2-pretty.pml:96 - [((waitDownCars>0))] (33:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!((((int)now.waitDownCars)>0)))
			continue;
		/* merge: waitDownCars = (waitDownCars-1)(33, 23, 33) */
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)-1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		/* merge: .(goto)(33, 25, 33) */
		reached[1][25] = 1;
		;
		/* merge: .(goto)(0, 32, 33) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 28: // STATE 27 - Part2-pretty.pml:97 - [((noUpCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((((int)now.noUpCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 29 - Part2-pretty.pml:98 - [((noUpCars<0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!((((int)now.noUpCars)<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 30 - Part2-pretty.pml:98 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 33 - Part2-pretty.pml:100 - [temp = (noDownCars+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDownCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 34 - Part2-pretty.pml:101 - [noDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 35 - Part2-pretty.pml:102 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 36 - Part2-pretty.pml:102 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 37 - Part2-pretty.pml:102 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 38 - Part2-pretty.pml:102 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 39 - Part2-pretty.pml:102 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 40 - Part2-pretty.pml:102 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 41 - Part2-pretty.pml:102 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 42 - Part2-pretty.pml:102 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 44 - Part2-pretty.pml:102 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][44] = 1;
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
	case 42: // STATE 45 - Part2-pretty.pml:102 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 46 - Part2-pretty.pml:102 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 48 - Part2-pretty.pml:102 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 49 - Part2-pretty.pml:102 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 53 - Part2-pretty.pml:103 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 54 - Part2-pretty.pml:104 - [((entryExitProtocol>0))] (73:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(73, 55, 73) */
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(73, 57, 73) */
		reached[1][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 59 - Part2-pretty.pml:105 - [((noDownCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((int)now.noDownCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 60 - Part2-pretty.pml:106 - [temp = (noDelayedUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDelayedUpCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 61 - Part2-pretty.pml:107 - [noDelayedUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 62 - Part2-pretty.pml:108 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 64 - Part2-pretty.pml:109 - [((waitUpCars>0))] (75:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		if (!((((int)now.waitUpCars)>0)))
			continue;
		/* merge: waitUpCars = (waitUpCars-1)(75, 65, 75) */
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)-1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		/* merge: .(goto)(75, 67, 75) */
		reached[1][67] = 1;
		;
		/* merge: .(goto)(0, 74, 75) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 53: // STATE 69 - Part2-pretty.pml:110 - [((noDownCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((((int)now.noDownCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 71 - Part2-pretty.pml:111 - [((noDownCars<0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (!((((int)now.noDownCars)<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 72 - Part2-pretty.pml:111 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 75 - Part2-pretty.pml:113 - [temp = (noUpCars+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][75] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noUpCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 76 - Part2-pretty.pml:114 - [noUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 77 - Part2-pretty.pml:115 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 78 - Part2-pretty.pml:115 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 79 - Part2-pretty.pml:115 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 80 - Part2-pretty.pml:115 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 81 - Part2-pretty.pml:115 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 82 - Part2-pretty.pml:115 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 83 - Part2-pretty.pml:115 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 84 - Part2-pretty.pml:115 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 86 - Part2-pretty.pml:115 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][86] = 1;
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
	case 67: // STATE 87 - Part2-pretty.pml:115 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 88 - Part2-pretty.pml:115 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 90 - Part2-pretty.pml:115 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 91 - Part2-pretty.pml:115 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 97 - Part2-pretty.pml:121 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 98 - Part2-pretty.pml:122 - [assert(((noUpCars==0)&&(noDownCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		spin_assert(((((int)now.noUpCars)==0)&&(((int)now.noDownCars)>0)), "((noUpCars==0)&&(noDownCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 100 - Part2-pretty.pml:125 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 101 - Part2-pretty.pml:126 - [assert(((noDownCars==0)&&(noUpCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		spin_assert(((((int)now.noDownCars)==0)&&(((int)now.noUpCars)>0)), "((noDownCars==0)&&(noUpCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 105 - Part2-pretty.pml:134 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 106 - Part2-pretty.pml:135 - [((entryExitProtocol>0))] (111:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(111, 107, 111) */
		reached[1][107] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(111, 109, 111) */
		reached[1][109] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 77: // STATE 111 - Part2-pretty.pml:136 - [temp = (noDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDownCars)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 112 - Part2-pretty.pml:137 - [noDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 113 - Part2-pretty.pml:138 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 114 - Part2-pretty.pml:138 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 115 - Part2-pretty.pml:138 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 116 - Part2-pretty.pml:138 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 117 - Part2-pretty.pml:138 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 118 - Part2-pretty.pml:138 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 119 - Part2-pretty.pml:138 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 120 - Part2-pretty.pml:138 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][120] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 122 - Part2-pretty.pml:138 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][122] = 1;
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
	case 88: // STATE 123 - Part2-pretty.pml:138 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 124 - Part2-pretty.pml:138 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 126 - Part2-pretty.pml:138 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 127 - Part2-pretty.pml:138 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 131 - Part2-pretty.pml:139 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 132 - Part2-pretty.pml:140 - [((entryExitProtocol>0))] (137:0:1 - 1)
		IfNotBlocked
		reached[1][132] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(137, 133, 137) */
		reached[1][133] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(137, 135, 137) */
		reached[1][135] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 94: // STATE 137 - Part2-pretty.pml:141 - [temp = (noUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][137] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noUpCars)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 138 - Part2-pretty.pml:142 - [noUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][138] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 139 - Part2-pretty.pml:143 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][139] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 140 - Part2-pretty.pml:143 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][140] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 141 - Part2-pretty.pml:143 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][141] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 142 - Part2-pretty.pml:143 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 143 - Part2-pretty.pml:143 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][143] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 144 - Part2-pretty.pml:143 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 145 - Part2-pretty.pml:143 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 146 - Part2-pretty.pml:143 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][146] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 148 - Part2-pretty.pml:143 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][148] = 1;
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
	case 105: // STATE 149 - Part2-pretty.pml:143 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][149] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 150 - Part2-pretty.pml:143 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][150] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 152 - Part2-pretty.pml:143 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][152] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 153 - Part2-pretty.pml:143 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][153] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 162 - Part2-pretty.pml:150 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][162] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 110: // STATE 1 - Part2-pretty.pml:52 - [carPID[1] = run Car(2)] (0:6:4 - 1)
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
	case 111: // STATE 6 - Part2-pretty.pml:61 - [-end-] (0:0:0 - 1)
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

