# 1 "test1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "test1.c"
# 33 "test1.c"
pid carPID[8];


byte noUpCars = 0;
byte noDownCars = 0;
byte noDelayedDownCars = 0;
byte noDelayedUpCars = 0;


byte entryExitProtocol = 1;
byte waitUpCars = 0;
byte waitDownCars = 0;

active proctype Process(){
 skip;
    if 
    :: ( (entryExitProtocol) == 0) -> entryExitProtocol = ((entryExitProtocol)-1) 
    fi
    entryExitProtocol = (entryExitProtocol+1);
    if 
    :: (noUpCars == 0 && noDelayedDownCars > 0) -> 
            noDelayedDownCars--; 
            waitDownCars = (waitDownCars+1); 
    :: (noDownCars == 0 && noDelayedUpCars > 0) -> noDelayedUpCars--; 
            waitUpCars = (waitUpCars+1); 
    :: !((noUpCars == 0 && noDelayedDownCars > 0) || (noDownCars == 0 && noDelayedUpCars > 0)) ->
            entryExitProtocol = (entryExitProtocol+1); 
    fi
 skip;

}
