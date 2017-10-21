#define DOWN 1
#define UP 2
#define P(X) \
if 
:: ((X) == 0) -> (X) = ((X)-1); 
fi

#define V(X) (X) = ((X)+1);

#define signal() \
    if \
    ::  (noUpCars == 0 && noDelayedDownCars > 0) -> \
            noDelayedDownCars--; \
            V(waitDownCars); \
    ::  (noDownCars == 0 && noDelayedUpCars > 0) -> \
            noDelayedUpCars--; \
            V(waitUpCars); \
    ::  !((noUpCars == 0 && noDelayedDownCars > 0) || \
        (noDownCars == 0 && noDelayedUpCars > 0)) -> \
            V(entryExitProtocol); \
    fi



//We do not care about car 0, as it does not affect other cars
pid[8] carPID;

//Counters:
byte noUpCars           = 0;
byte noDownCars         = 0;
byte noDelayedDownCars  = 0;
byte noDelayedUpCars    = 0;

//Semaphores:
byte enterExitProtocol  = 1;
byte waitUpCars         = 0;
byte waitDownCars       = 0;


init{
    atomic{
        carPID[1] = run Car(UP); //Tager kune bil 1,2 og 5,6 lige nu. Kan ændres bagefter.
        //carPID[2] = run Car(UP);
        //carPID[5] = run Car(Down);
        //carPID[6] = run Car(Down);
    }
}

proctype Car(byte type)
{

    do
    ::
    
gate:   //(*)Hvor langt rækker markoerene?
        skip;  //Just to have a place marked as the gate.
        if
        ::  type == DOWN ->
entryDown:
                P(entryExitProtocol);
                if  ::  noUpCars >  0 ->
                            noDelayedDownCars++;
                            V(entryExitProtocol);
                            P(waitDownCars);
                    ::  noUpCars == 0 -> break;
                fi
                noUpCars++;
                signal();                
crit1:
                assert(noDownCars == 0);
                //(*) TODO add asserts.
                skip; //Here they are in the crit section.
exitDown:
                P(entryExitProtocol);
                noUpCars++;
                signal();
        ::  type == UP   ->
entryUp:
                P(entryExitProtocol);
                if  ::  noDownCars >  0 ->
                            noDelayedUpCars++;
                            V(entryExitProtocol);
                            P(waitUpCars);
                    ::  noDownCars == 0 -> break;
                fi
                noDownCars++;
                signal();  
crit2:
                //(*) TODO add asserts.
                assert(noUpCars == 0);
                skip; //Here they are in the crit section.        
exitUp:
            
        ::  (type != DOWN && type != UP) -> 
other:
                assert(false); //not alowed.
        fi
    od;
}


/* Liveness properties (uncomment to verify) */

//ltl obl1  { [] ( ((P1@entry) && [] (!P2@entry) ) -> <> (P1@crit)) } 
//ltl res   { [] ( (P1@entry || P2@entry) -> <> (P1@crit || P2@crit) ) }
//ltl fair1 { [] ( (P1@entry) -> <>  (P1@crit) ) } 
 
