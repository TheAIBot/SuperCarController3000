#define DOWN 1
#define UP 2

#define P(X) \
if \
:: ( (X) > 0) -> X = ((X)-1) \
fi 


#define V(X) X = (X+1)


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
pid carPID[8];

//Counters:
byte noUpCars           = 0;
byte noDownCars         = 0;
byte noDelayedDownCars  = 0;
byte noDelayedUpCars    = 0;

//Semaphores:
byte entryExitProtocol  = 1;
byte waitUpCars         = 0;
byte waitDownCars       = 0;

active proctype Process(){
	skip;
    	P(entryExitProtocol)
    	V(entryExitProtocol);
	signal()
	skip;

}

active proctype kage(){
	skip;
	skip;

}
