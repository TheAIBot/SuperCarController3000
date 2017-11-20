	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM obl0 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM test2 */
;
		
	case 6: // STATE 1
		goto R999;

	case 7: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Check_noGreaterDifference */

	case 8: // STATE 4
		;
		((P2 *)this)->_3_9_i = trpt->bup.ovals[3];
		((P2 *)this)->_3_9_i = trpt->bup.ovals[2];
		((P2 *)this)->_3_9_maxValue = trpt->bup.ovals[1];
		((P2 *)this)->_3_9_minValue = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 10: // STATE 14
		;
		((P2 *)this)->_3_9_i = trpt->bup.ovals[2];
		((P2 *)this)->_3_9_minValue = trpt->bup.ovals[1];
	/* 0 */	((P2 *)this)->_3_9_minValue = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 11: // STATE 14
		;
		((P2 *)this)->_3_9_i = trpt->bup.ovals[2];
		((P2 *)this)->_3_9_maxValue = trpt->bup.ovals[1];
	/* 0 */	((P2 *)this)->_3_9_maxValue = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 13: // STATE 14
		;
		((P2 *)this)->_3_9_i = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 14
		;
		((P2 *)this)->_3_9_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Car */

	case 17: // STATE 18
		;
		now.roundCount[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 20: // STATE 26
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 31
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 38
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 39
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 40
		;
		isInBarrier[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 28: // STATE 42
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 43
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 44
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 45
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 52
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 55
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 60
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 61
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 62
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 40: // STATE 69
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 72
		;
		isInBarrier[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 83
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 43: // STATE 9
		;
		now.roundCount[2] = trpt->bup.ovals[8];
		now.roundCount[1] = trpt->bup.ovals[7];
		now.roundCount[0] = trpt->bup.ovals[6];
		isInBarrier[2] = trpt->bup.ovals[5];
		isInBarrier[1] = trpt->bup.ovals[4];
		isInBarrier[0] = trpt->bup.ovals[3];
		now.carPID[2] = trpt->bup.ovals[2];
		delproc(0, now._nr_pr-1);
		now.carPID[1] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		now.carPID[0] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 44: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 45: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;
	}

