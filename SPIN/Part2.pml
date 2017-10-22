#define DOWN 1
#define UP 2

#define P(X)  atomic{\
if \
:: ( (X) > 0) -> X = ((X)-1) \
fi }


#define V(X) atomic{X = (X+1)}


#define signal() \
    if \
    ::  (noUpCars == 0 && noDelayedDownCars > 0) -> \
            noDelayedDownCars--; \
            V(waitDownCars) \
    ::  (noDownCars == 0 && noDelayedUpCars > 0) -> \
            noDelayedUpCars--; \
            V(waitUpCars) \
    ::  !((noUpCars == 0 && noDelayedDownCars > 0) || \
        (noDownCars == 0 && noDelayedUpCars > 0)) -> \
            V(entryExitProtocol) \
    fi

//We do not care about car 0, as it does not affect other cars
pid carPID[9];

//Counters:
byte noUpCars           	        = 0;
byte noDownCars                = 0;
byte noDelayedDownCars  = 0;
byte noDelayedUpCars       = 0;

//Semaphores:
byte entryExitProtocol  = 1;
byte waitUpCars         = 0;
byte waitDownCars       = 0;

//(*) Remember making things unatomic.


init{
    atomic{
	//Car 0 not included.
        carPID[1] = run Car(UP); 
        carPID[2] = run Car(UP);
        carPID[3] = run Car(UP);
        carPID[4] = run Car(UP);
        carPID[5] = run Car(DOWN);
        carPID[6] = run Car(DOWN);
        carPID[7] = run Car(DOWN);
        carPID[8] = run Car(DOWN);
    }
}

proctype Car(byte type)
{
	int temp = 0;

    do
    ::
        skip;  //Just to have a place marked as the gate.
gate:   //(*)Hvor langt rækker markoerene?
       
        if
        ::  (type == DOWN) ->
entryDown:
                P(entryExitProtocol);
                if  ::  noUpCars >  0 ->
		  temp = noDelayedDownCars + 1;
	               noDelayedDownCars = temp;
                            V(entryExitProtocol);
                            P(waitDownCars)
                    ::  noUpCars == 0 -> skip;
                fi
	   temp = noDownCars + 1;
	   noDownCars = temp;
                signal();                
crit1:
                assert(noUpCars == 0 && noDownCars>0); //Tillader at 
                //(*) TODO add asserts.
                skip; //Here they are in the crit section.
exitDown:
                P(entryExitProtocol);
	   temp = noDownCars - 1;
	   noDownCars = temp;
                signal();
        ::  type == UP   ->
entryUp:
                P(entryExitProtocol);
                if  ::  noDownCars >  0 ->
                            noDelayedUpCars++;
                            V(entryExitProtocol);
                            P(waitUpCars);
                    ::  noDownCars == 0 -> skip;
                fi
                noUpCars++;
                signal();  
crit2:
                //(*) TODO add asserts.
                assert(noDownCars == 0 && noUpCars>0);
                skip; //Here they are in the crit section.        
exitUp:
	P(entryExitProtocol);
	noUpCars--;
	signal();            
        ::  (type != DOWN && type != UP) -> 
other:
                assert(false) //not alowed.
        fi;
    od;
}


/* Liveness properties (uncomment to verify) */

//ltl obl1  { [] ( ((P1@entry) && [] (!P2@entry) ) -> <> (P1@crit)) } 
//ltl res   { [] ( (P1@entry || P2@entry) -> <> (P1@crit || P2@crit) ) }
//ltl fair1 { [] ( (P1@entry) -> <>  (P1@crit) ) } 
 
