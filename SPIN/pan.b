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
		
	case 13: // STATE 13
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 18
		;
		((P2 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 19
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 21
		;
		((P2 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 22
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 23
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 24
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 27
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 30
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 35
		;
		((P2 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 36
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 37
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 30: // STATE 40
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: // STATE 47
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: // STATE 66
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CarController */

	case 35: // STATE 3
		;
		now.onOffSwitch = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 7
		;
		now.isOn = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 8
		;
		now.onOffSwitch = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 12
		;
		now.onOffSwitch = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 16
		;
		now.isOn = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 18
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 42: // STATE 23
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 24
		;
		now.numberCarsToAwake = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 25
		;
		now.numberCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 26
		;
		now.onOffSwitch = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 28
		;
		now.awaitAllCarsAtBarrier = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: // STATE 31
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 33
		;
		now.onOffSwitch = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 40
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 51: // STATE 2
		;
		now.carPID[2] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		now.carPID[1] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 52: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;
	}

