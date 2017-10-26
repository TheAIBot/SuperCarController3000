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

		 /* PROC Car */
;
		;
		
	case 19: // STATE 12
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 17
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 18
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 19
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 22
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
		
	case 28: // STATE 32
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 33
		;
		now.noDownCars = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 34
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 35
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 36
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 37
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 38
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 39
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: // STATE 40
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 41
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 43
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 39: // STATE 44
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 45
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 47
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 42: // STATE 48
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 44: // STATE 54
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 59
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 60
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 61
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 64
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
		
	case 53: // STATE 74
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 75
		;
		now.noUpCars = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 76
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 77
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 78
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 79
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 80
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 81
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 61: // STATE 82
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 83
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 85
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 64: // STATE 86
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 87
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 89
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 67: // STATE 90
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
		
	case 73: // STATE 106
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 110
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 111
		;
		now.noDownCars = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 112
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 113
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 114
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 115
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 116
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 117
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 82: // STATE 118
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 119
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 121
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 85: // STATE 122
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 123
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 125
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 88: // STATE 126
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 90: // STATE 132
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 136
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 137
		;
		now.noUpCars = trpt->bup.oval;
		;
		goto R999;

	case 93: // STATE 138
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 94: // STATE 139
		;
		((P1 *)this)->condition1 = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 140
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 141
		;
		((P1 *)this)->condition2 = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 142
		;
		((P1 *)this)->condition3 = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 143
		;
	/* 0 */	((P1 *)this)->condition1 = trpt->bup.oval;
		;
		;
		goto R999;

	case 99: // STATE 144
		;
		now.noDelayedDownCars = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 145
		;
		now.waitDownCars = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 147
		;
	/* 1 */	((P1 *)this)->condition1 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->condition2 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 102: // STATE 148
		;
		now.noDelayedUpCars = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 149
		;
		now.waitUpCars = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 151
		;
	/* 0 */	((P1 *)this)->condition3 = trpt->bup.oval;
		;
		;
		goto R999;

	case 105: // STATE 152
		;
		now.entryExitProtocol = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 168
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 107: // STATE 4
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

	case 108: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;
	}

