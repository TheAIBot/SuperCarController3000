	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM res */
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

		 /* CLAIM obl6 */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM obl5 */
;
		;
		;
		;
		
	case 11: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM obl2 */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM obl1 */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM testEternalLoop */
;
		;
		
	case 19: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Car */

	case 20: // STATE 3
		;
		((P1 *)this)->kage = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 22: // STATE 13
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 18
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 19
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 20
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 23
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 31: // STATE 33
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 34
		;
		now.noDownCars = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 35
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 36
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 37
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 38
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 39
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 40
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 39: // STATE 41
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 42
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 44
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 42: // STATE 45
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 46
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 48
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 45: // STATE 49
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 47: // STATE 55
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 49: // STATE 60
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 61
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 62
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 65
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 56: // STATE 75
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 76
		;
		now.noUpCars = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 77
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 78
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 79
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 80
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 81
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 82
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 64: // STATE 83
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 84
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 86
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 67: // STATE 87
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 88
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 90
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 70: // STATE 91
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
		
	case 76: // STATE 107
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 111
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 112
		;
		now.noDownCars = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 113
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 114
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 115
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 116
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 117
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 118
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 85: // STATE 119
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 120
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 122
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 88: // STATE 123
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 124
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 126
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 91: // STATE 127
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 93: // STATE 133
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 94: // STATE 137
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 138
		;
		now.noUpCars = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 139
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 140
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 141
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 142
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 143
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 144
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 102: // STATE 145
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 146
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 148
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 105: // STATE 149
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 150
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 152
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 108: // STATE 153
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 162
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 110: // STATE 4
		;
		now.carPID[6] = trpt->bup.ovals[3];
		delproc(0, now._nr_pr-1);
		now.carPID[5] = trpt->bup.ovals[2];
		delproc(0, now._nr_pr-1);
		now.carPID[2] = trpt->bup.ovals[1];
		delproc(0, now._nr_pr-1);
		now.carPID[1] = trpt->bup.ovals[0];
		delproc(0, now._nr_pr-1);
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 111: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;
	}

