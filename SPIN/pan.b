	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM livenessProperty */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 9: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Car */

	case 10: // STATE 11
		;
		now.roundCount[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 12
		;
		now.isInBarrier[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 14: // STATE 20
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 25
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 32
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 33
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 35
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 36
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 37
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 38
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 45
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 48
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 53
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 54
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 55
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 62
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 65
		;
		now.isInBarrier[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 71
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 36: // STATE 9
		;
		now.roundCount[2] = trpt->bup.ovals[8];
		now.roundCount[1] = trpt->bup.ovals[7];
		now.roundCount[0] = trpt->bup.ovals[6];
		now.isInBarrier[2] = trpt->bup.ovals[5];
		now.isInBarrier[1] = trpt->bup.ovals[4];
		now.isInBarrier[0] = trpt->bup.ovals[3];
		now.carPID[2] = trpt->bup.ovals[2];
		delproc(0, now._nr_pr-1);
		now.carPID[1] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		now.carPID[0] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 9);
		goto R999;

	case 37: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;
	}

