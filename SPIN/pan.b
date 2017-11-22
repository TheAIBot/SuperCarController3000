	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM test */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

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
		
	case 11: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safetyProperty */
;
		
	case 12: // STATE 1
		goto R999;

	case 13: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Car */

	case 14: // STATE 11
		;
		now.roundCount[ Index(((P1 *)this)->num, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 17: // STATE 19
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 24
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 31
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 32
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 34
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 35
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 36
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 37
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 44
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 47
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: // STATE 52
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 53
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 54
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 61
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 74
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 38: // STATE 6
		;
		now.roundCount[2] = trpt->bup.ovals[5];
		now.roundCount[1] = trpt->bup.ovals[4];
		now.roundCount[0] = trpt->bup.ovals[3];
		now.carPID[2] = trpt->bup.ovals[2];
		delproc(0, now._nr_pr-1);
		now.carPID[1] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		now.carPID[0] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 39: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;
	}

