	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM passBarrier */
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

		 /* CLAIM notPassBarrier */
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
		
	case 11: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Car */
;
		;
		;
		;
		
	case 14: // STATE 18
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 23
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 30
		;
		((P2 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 31
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 32
		;
		now.isInBarrier[ Index(((P2 *)this)->_pid, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 34
		;
		((P2 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 35
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 36
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 37
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 44
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 47
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 30: // STATE 52
		;
		((P2 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 53
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 54
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: // STATE 60
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 63
		;
		now.isInBarrier[ Index(((P2 *)this)->_pid, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 74
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CarController */

	case 37: // STATE 1
		;
		now.isOn = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 39: // STATE 4
		;
		now.isInBarrier[ Index(now.carPID[2], 4) ] = trpt->bup.ovals[3];
		now.isInBarrier[ Index(now.carPID[1], 4) ] = trpt->bup.ovals[2];
		now.carPID[2] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		now.carPID[1] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 40: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;
	}

