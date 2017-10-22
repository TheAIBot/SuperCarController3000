	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Car */
;
		;
		
	case 4: // STATE 4
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 6: // STATE 9
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 10
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 13
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 10: // STATE 21
		;
		now.noDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 12: // STATE 23
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 24
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 27
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 28
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 31
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 38
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 42
		;
		now.noDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 44
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 45
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 48
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 49
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 52
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 31: // STATE 58
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 63
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 64
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 67
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 37: // STATE 75
		;
		now.noUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 77
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 78
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 42: // STATE 81
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 82
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 45: // STATE 85
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 47: // STATE 92
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 96
		;
		now.noUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 50: // STATE 98
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 99
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 53: // STATE 102
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 103
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 56: // STATE 106
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 59: // STATE 117
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 60: // STATE 8
		;
		carPID[8] = trpt->bup.ovals[7];
		delproc(0, now._nr_pr-1);
		carPID[7] = trpt->bup.ovals[6];
		delproc(0, now._nr_pr-1);
		carPID[6] = trpt->bup.ovals[5];
		delproc(0, now._nr_pr-1);
		carPID[5] = trpt->bup.ovals[4];
		delproc(0, now._nr_pr-1);
		carPID[4] = trpt->bup.ovals[3];
		delproc(0, now._nr_pr-1);
		carPID[3] = trpt->bup.ovals[2];
		delproc(0, now._nr_pr-1);
		carPID[2] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		carPID[1] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 61: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;
	}

