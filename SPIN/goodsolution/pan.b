	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Car */
;
		;
		
	case 11: // STATE 3
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: // STATE 6
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 7
		;
		now.delayedUpCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 8
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 11
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 17
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 18
		;
		now.upCarsCount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 20
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 21
		;
		now.delayedDownCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 22
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 25
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 26
		;
		now.delayedUpCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 27
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 30
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 31: // STATE 38
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 41
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 42
		;
		now.delayedDownCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 43
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 46
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 38: // STATE 52
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 53
		;
		now.downCarsCount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: // STATE 55
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 56
		;
		now.delayedDownCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 57
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 45: // STATE 60
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 61
		;
		now.delayedUpCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 62
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 49: // STATE 65
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
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
		;
		;
		
	case 57: // STATE 84
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 86
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 87
		;
		now.upCarsCount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 61: // STATE 89
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 90
		;
		now.delayedDownCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 91
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 65: // STATE 94
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 95
		;
		now.delayedUpCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 96
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 69: // STATE 99
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 107
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 109
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 110
		;
		now.downCarsCount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 75: // STATE 112
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 113
		;
		now.delayedDownCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 114
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 79: // STATE 117
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 118
		;
		now.delayedUpCarsCount = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 119
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 83: // STATE 122
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 134
		;
		p_restor(II);
		;
		;
		goto R999;
	}

