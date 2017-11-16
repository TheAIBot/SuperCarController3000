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
	case 3: // STATE 1 - _spin_nvr.tmp:56 - [((!(!(((((Car[carPID[1]]._p==entry)||(Car[carPID[2]]._p==entry))||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry))))&&!(((((Car[carPID[1]]._p==crit)||(Car[carPID[2]]._p==crit))||(Car[carPID[5]]._p==crit))||(Car[carPID[6]]._p==crit)))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94))))&& !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==102)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==102))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==102))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==102))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:61 - [(!(((((Car[carPID[1]]._p==crit)||(Car[carPID[2]]._p==crit))||(Car[carPID[5]]._p==crit))||(Car[carPID[6]]._p==crit))))] (0:0:0 - 1)
		
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
		if (!( !(((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==102)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==102))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==102))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==102)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:63 - [-end-] (0:0:0 - 1)
		
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
	case 6: // STATE 1 - _spin_nvr.tmp:45 - [(((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[1]]._p==entry)))&&!((Car[carPID[6]]._p==crit)))&&(Car[carPID[6]]._p==entry)))] (0:0:0 - 1)
		
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
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==102)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:50 - [((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[1]]._p==entry)))&&!((Car[carPID[6]]._p==crit))))] (0:0:0 - 1)
		
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
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==102)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:52 - [-end-] (0:0:0 - 1)
		
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
	case 9: // STATE 1 - _spin_nvr.tmp:34 - [(((!((((Car[carPID[2]]._p==entry)||(Car[carPID[1]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[5]]._p==crit)))&&(Car[carPID[5]]._p==entry)))] (0:0:0 - 1)
		
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
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==102)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - _spin_nvr.tmp:39 - [((!((((Car[carPID[2]]._p==entry)||(Car[carPID[1]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[5]]._p==crit))))] (0:0:0 - 1)
		
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
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==102)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - _spin_nvr.tmp:41 - [-end-] (0:0:0 - 1)
		
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
	case 12: // STATE 1 - _spin_nvr.tmp:23 - [(((!((((Car[carPID[1]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[2]]._p==crit)))&&(Car[carPID[2]]._p==entry)))] (0:0:0 - 1)
		
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
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==102)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:28 - [((!((((Car[carPID[1]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[2]]._p==crit))))] (0:0:0 - 1)
		
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
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==102)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:30 - [-end-] (0:0:0 - 1)
		
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
	case 15: // STATE 1 - _spin_nvr.tmp:12 - [(((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[1]]._p==crit)))&&(Car[carPID[1]]._p==entry)))] (0:0:0 - 1)
		
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
		if (!((( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==102)))&&(((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==94))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:17 - [((!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))&&!((Car[carPID[1]]._p==crit))))] (0:0:0 - 1)
		
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
		if (!(( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94)))&& !((((int)((P1 *)Pptr(BASE+((int)now.carPID[1])))->_p)==102)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM test */
	case 18: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))))] (6:0:0 - 1)
		
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
		if (!( !( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94))))))
			continue;
		/* merge: assert(!(!(!((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry))))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !((((((int)((P1 *)Pptr(BASE+((int)now.carPID[2])))->_p)==94)||(((int)((P1 *)Pptr(BASE+((int)now.carPID[5])))->_p)==94))||(((int)((P1 *)Pptr(BASE+((int)now.carPID[6])))->_p)==94))))), " !( !( !((((Car[carPID[2]]._p==entry)||(Car[carPID[5]]._p==entry))||(Car[carPID[6]]._p==entry)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
	case 20: // STATE 10 - Part2-pretty.pml:88 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 11 - Part2-pretty.pml:89 - [((entryExitProtocol>0))] (30:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(30, 12, 30) */
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(30, 14, 30) */
		reached[1][14] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: // STATE 16 - Part2-pretty.pml:90 - [((noUpCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((int)now.noUpCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 17 - Part2-pretty.pml:91 - [temp = (noDelayedDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDelayedDownCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 18 - Part2-pretty.pml:92 - [noDelayedDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 19 - Part2-pretty.pml:93 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 21 - Part2-pretty.pml:94 - [((waitDownCars>0))] (32:0:1 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((((int)now.waitDownCars)>0)))
			continue;
		/* merge: waitDownCars = (waitDownCars-1)(32, 22, 32) */
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)-1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		/* merge: .(goto)(32, 24, 32) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 31, 32) */
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 27: // STATE 26 - Part2-pretty.pml:95 - [((noUpCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((int)now.noUpCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 28 - Part2-pretty.pml:96 - [((noUpCars<0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((((int)now.noUpCars)<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 29 - Part2-pretty.pml:96 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 32 - Part2-pretty.pml:98 - [temp = (noDownCars+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDownCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 33 - Part2-pretty.pml:99 - [noDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 34 - Part2-pretty.pml:100 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 35 - Part2-pretty.pml:100 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 36 - Part2-pretty.pml:100 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 37 - Part2-pretty.pml:100 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 38 - Part2-pretty.pml:100 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 39 - Part2-pretty.pml:100 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 40 - Part2-pretty.pml:100 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 41 - Part2-pretty.pml:100 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 43 - Part2-pretty.pml:100 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][43] = 1;
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
	case 41: // STATE 44 - Part2-pretty.pml:100 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 45 - Part2-pretty.pml:100 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 47 - Part2-pretty.pml:100 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 48 - Part2-pretty.pml:100 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 52 - Part2-pretty.pml:101 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 53 - Part2-pretty.pml:102 - [((entryExitProtocol>0))] (72:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(72, 54, 72) */
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(72, 56, 72) */
		reached[1][56] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 47: // STATE 58 - Part2-pretty.pml:103 - [((noDownCars>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		if (!((((int)now.noDownCars)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 59 - Part2-pretty.pml:104 - [temp = (noDelayedUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDelayedUpCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 60 - Part2-pretty.pml:105 - [noDelayedUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 61 - Part2-pretty.pml:106 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 63 - Part2-pretty.pml:107 - [((waitUpCars>0))] (74:0:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((int)now.waitUpCars)>0)))
			continue;
		/* merge: waitUpCars = (waitUpCars-1)(74, 64, 74) */
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)-1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		/* merge: .(goto)(74, 66, 74) */
		reached[1][66] = 1;
		;
		/* merge: .(goto)(0, 73, 74) */
		reached[1][73] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 52: // STATE 68 - Part2-pretty.pml:108 - [((noDownCars==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		if (!((((int)now.noDownCars)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 70 - Part2-pretty.pml:109 - [((noDownCars<0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!((((int)now.noDownCars)<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 71 - Part2-pretty.pml:109 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 74 - Part2-pretty.pml:111 - [temp = (noUpCars+1)] (0:0:1 - 4)
		IfNotBlocked
		reached[1][74] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noUpCars)+1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 75 - Part2-pretty.pml:112 - [noUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 76 - Part2-pretty.pml:113 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 77 - Part2-pretty.pml:113 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 78 - Part2-pretty.pml:113 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 79 - Part2-pretty.pml:113 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 80 - Part2-pretty.pml:113 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 81 - Part2-pretty.pml:113 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 82 - Part2-pretty.pml:113 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 83 - Part2-pretty.pml:113 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 85 - Part2-pretty.pml:113 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][85] = 1;
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
	case 66: // STATE 86 - Part2-pretty.pml:113 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 87 - Part2-pretty.pml:113 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 89 - Part2-pretty.pml:113 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 90 - Part2-pretty.pml:113 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 96 - Part2-pretty.pml:119 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 97 - Part2-pretty.pml:120 - [assert(((noUpCars==0)&&(noDownCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		spin_assert(((((int)now.noUpCars)==0)&&(((int)now.noDownCars)>0)), "((noUpCars==0)&&(noDownCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 99 - Part2-pretty.pml:123 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 100 - Part2-pretty.pml:124 - [assert(((noDownCars==0)&&(noUpCars>0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		spin_assert(((((int)now.noDownCars)==0)&&(((int)now.noUpCars)>0)), "((noDownCars==0)&&(noUpCars>0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 104 - Part2-pretty.pml:132 - [((type==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!((((int)((P1 *)this)->type)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 105 - Part2-pretty.pml:133 - [((entryExitProtocol>0))] (110:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(110, 106, 110) */
		reached[1][106] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(110, 108, 110) */
		reached[1][108] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 76: // STATE 110 - Part2-pretty.pml:134 - [temp = (noDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noDownCars)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 111 - Part2-pretty.pml:135 - [noDownCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		(trpt+1)->bup.oval = ((int)now.noDownCars);
		now.noDownCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noDownCars", ((int)now.noDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 112 - Part2-pretty.pml:136 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 113 - Part2-pretty.pml:136 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 114 - Part2-pretty.pml:136 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 115 - Part2-pretty.pml:136 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 116 - Part2-pretty.pml:136 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 117 - Part2-pretty.pml:136 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 118 - Part2-pretty.pml:136 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 119 - Part2-pretty.pml:136 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 121 - Part2-pretty.pml:136 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][121] = 1;
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
	case 87: // STATE 122 - Part2-pretty.pml:136 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 123 - Part2-pretty.pml:136 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 125 - Part2-pretty.pml:136 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 126 - Part2-pretty.pml:136 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 130 - Part2-pretty.pml:137 - [((type==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		if (!((((int)((P1 *)this)->type)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 131 - Part2-pretty.pml:138 - [((entryExitProtocol>0))] (136:0:1 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		if (!((((int)now.entryExitProtocol)>0)))
			continue;
		/* merge: entryExitProtocol = (entryExitProtocol-1)(136, 132, 136) */
		reached[1][132] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)-1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		/* merge: .(goto)(136, 134, 136) */
		reached[1][134] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 93: // STATE 136 - Part2-pretty.pml:139 - [temp = (noUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][136] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = (((int)now.noUpCars)-1);
#ifdef VAR_RANGES
		logval("Car:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 137 - Part2-pretty.pml:140 - [noUpCars = temp] (0:0:1 - 1)
		IfNotBlocked
		reached[1][137] = 1;
		(trpt+1)->bup.oval = ((int)now.noUpCars);
		now.noUpCars = ((P1 *)this)->temp;
#ifdef VAR_RANGES
		logval("noUpCars", ((int)now.noUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 138 - Part2-pretty.pml:141 - [condition1 = (noUpCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][138] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)now.noUpCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 139 - Part2-pretty.pml:141 - [condition1 = (condition1&&(noDelayedDownCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][139] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition1);
		((P1 *)this)->condition1 = (((int)((P1 *)this)->condition1)&&(((int)now.noDelayedDownCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition1", ((int)((P1 *)this)->condition1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 140 - Part2-pretty.pml:141 - [condition2 = (noDownCars==0)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][140] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)now.noDownCars)==0);
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 141 - Part2-pretty.pml:141 - [condition2 = (condition2&&(noDelayedUpCars>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][141] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition2);
		((P1 *)this)->condition2 = (((int)((P1 *)this)->condition2)&&(((int)now.noDelayedUpCars)>0));
#ifdef VAR_RANGES
		logval("Car:condition2", ((int)((P1 *)this)->condition2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 142 - Part2-pretty.pml:141 - [condition3 = !((condition1||condition2))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->condition3);
		((P1 *)this)->condition3 =  !((((int)((P1 *)this)->condition1)||((int)((P1 *)this)->condition2)));
#ifdef VAR_RANGES
		logval("Car:condition3", ((int)((P1 *)this)->condition3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 143 - Part2-pretty.pml:141 - [(condition1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][143] = 1;
		if (!(((int)((P1 *)this)->condition1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition1 */  (trpt+1)->bup.oval = ((P1 *)this)->condition1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition1 = 0;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 144 - Part2-pretty.pml:141 - [noDelayedDownCars = (noDelayedDownCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedDownCars);
		now.noDelayedDownCars = (((int)now.noDelayedDownCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedDownCars", ((int)now.noDelayedDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 145 - Part2-pretty.pml:141 - [waitDownCars = (waitDownCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		(trpt+1)->bup.oval = ((int)now.waitDownCars);
		now.waitDownCars = (((int)now.waitDownCars)+1);
#ifdef VAR_RANGES
		logval("waitDownCars", ((int)now.waitDownCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 147 - Part2-pretty.pml:141 - [((condition2&&!(condition1)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][147] = 1;
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
	case 104: // STATE 148 - Part2-pretty.pml:141 - [noDelayedUpCars = (noDelayedUpCars-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][148] = 1;
		(trpt+1)->bup.oval = ((int)now.noDelayedUpCars);
		now.noDelayedUpCars = (((int)now.noDelayedUpCars)-1);
#ifdef VAR_RANGES
		logval("noDelayedUpCars", ((int)now.noDelayedUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 149 - Part2-pretty.pml:141 - [waitUpCars = (waitUpCars+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][149] = 1;
		(trpt+1)->bup.oval = ((int)now.waitUpCars);
		now.waitUpCars = (((int)now.waitUpCars)+1);
#ifdef VAR_RANGES
		logval("waitUpCars", ((int)now.waitUpCars));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 151 - Part2-pretty.pml:141 - [(condition3)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][151] = 1;
		if (!(((int)((P1 *)this)->condition3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: condition3 */  (trpt+1)->bup.oval = ((P1 *)this)->condition3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->condition3 = 0;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 152 - Part2-pretty.pml:141 - [entryExitProtocol = (entryExitProtocol+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][152] = 1;
		(trpt+1)->bup.oval = ((int)now.entryExitProtocol);
		now.entryExitProtocol = (((int)now.entryExitProtocol)+1);
#ifdef VAR_RANGES
		logval("entryExitProtocol", ((int)now.entryExitProtocol));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 161 - Part2-pretty.pml:148 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][161] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 109: // STATE 1 - Part2-pretty.pml:52 - [carPID[1] = run Car(2)] (0:6:4 - 1)
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
	case 110: // STATE 6 - Part2-pretty.pml:61 - [-end-] (0:0:0 - 1)
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

