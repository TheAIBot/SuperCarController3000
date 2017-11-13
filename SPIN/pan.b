	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Check_noGreaterDifference */

	case 3: // STATE 4
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
		
	case 5: // STATE 14
		;
		((P2 *)this)->_3_9_i = trpt->bup.ovals[2];
		((P2 *)this)->_3_9_minValue = trpt->bup.ovals[1];
	/* 0 */	((P2 *)this)->_3_9_minValue = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 6: // STATE 14
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
		
	case 8: // STATE 14
		;
		((P2 *)this)->_3_9_i = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 14
		;
		((P2 *)this)->_3_9_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Car */

	case 12: // STATE 17
		;
		now.roundCount[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 15: // STATE 25
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 30
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 37
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 38
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 39
		;
		isInBarrier[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 41
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 42
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 43
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 44
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 28: // STATE 51
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 54
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 31: // STATE 59
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 60
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 61
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 68
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 71
		;
		isInBarrier[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 82
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 38: // STATE 9
		;
		now.roundCount[2] = trpt->bup.ovals[8];
		now.roundCount[1] = trpt->bup.ovals[7];
		now.roundCount[0] = trpt->bup.ovals[6];
		isInBarrier[2] = trpt->bup.ovals[5];
		isInBarrier[1] = trpt->bup.ovals[4];
		isInBarrier[0] = trpt->bup.ovals[3];
		carPID[2] = trpt->bup.ovals[2];
		delproc(0, now._nr_pr-1);
		carPID[1] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		carPID[0] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 39: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 40: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;
	}

