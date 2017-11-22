#define UP 1
#define DOWN 2
#define NUMBER_OF_CARS 3




#define P(X)  atomic{\
if \
:: ( (X) > 0) -> X = ((X)-1) \
fi }

#define V(X) atomic{X = (X+1)}


//We do not care about car 0, as it does not affect other cars
pid carPID[NUMBER_OF_CARS]; //TODO (*) change back to size 9

//State variables, to signal where cars are:
int roundCount[NUMBER_OF_CARS]; //TODO (*) correct?

//togles:
bool isOn                   = true;

//Counters:
byte numberCarsAtBarrier    = 0;
byte numberCarsToAwake      = 0;

//Semaphores:
byte entryExitProtocol      = 1;
byte awaitAllCarsAtBarrier  = 0;


init{
    atomic{
	//Car 0 not included.
        carPID[0]   = run Car(UP, 0); 
        carPID[1]   = run Car(UP, 1);
        carPID[2]   = run Car(UP, 2);
roundCount[0]       = 0;
roundCount[1]       = 0;
roundCount[2]       = 0;
        //carPID[3] = run Car(UP, 3);
        //carPID[4] = run Car(DOWN,4);
        //carPID[5] = run Car(DOWN,5);
        //carPID[6] = run Car(DOWN,6);
        //carPID[7] = run Car(DOWN,7);
    }
}


proctype Car(byte type; byte num)
{
	int temp = 0;

    do //No need to include atBarrier, as the car either is at the barrier, or it is not.
    ::
        skip;  
beforeBarrier:   
        
        do
        :: true -> skip; //(*) bare skip. Hvorfor dur det ikke med det?
        :: true -> break;
        od;
        
        skip;
barrierEntry: 
        skip;
        
        //The sync() code.
        //Using goto returnBarrier instead of an actual return

        roundCount[num]++; //Allowed to be atomic.
        
        if
        :: !isOn -> goto returnBarrier;
        ::  isOn -> skip;
        fi;
        
        P(entryExitProtocol);        
        if
        :: !isOn -> 
                V(entryExitProtocol);
                goto returnBarrier;
        ::  isOn -> skip;
        fi;
                
        temp                = numberCarsAtBarrier + 1;
        numberCarsAtBarrier = temp;
        
        if 
        ::  (numberCarsAtBarrier == NUMBER_OF_CARS) ->
            temp = numberCarsAtBarrier - 2;
            numberCarsToAwake = temp;
            numberCarsAtBarrier = 0; //All cars must arrive at the barrier again.
            V(awaitAllCarsAtBarrier);
            goto returnBarrier;
        :: !(numberCarsAtBarrier == NUMBER_OF_CARS) -> skip;            
        fi;
        
        V(entryExitProtocol); //Error here. Transition to next line, and then switch off(*)
        P(awaitAllCarsAtBarrier);
        if 
        ::  (numberCarsToAwake > 0) ->
            temp = numberCarsToAwake - 1;
            numberCarsToAwake = temp;
            V(awaitAllCarsAtBarrier);
            goto returnBarrier;
        :: !(numberCarsToAwake > 0) -> skip;
        fi;
        
        V(entryExitProtocol);
        

returnBarrier:
        skip;	
		
afterBarrier:
        
        do
        :: true -> skip;
        :: true -> break;
        od;
        
        
    od;
}


ltl safetyProperty{[]( !( (roundCount[0] > roundCount[1] || roundCount[0] > roundCount[2]) &&  Car[carPID[0]]@afterBarrier) )}

ltl livenessProperty{[] (((Car[carPID[0]]@barrierEntry && Car[carPID[1]]@barrierEntry && Car[carPID[2]]@barrierEntry) &&  (roundCount[0] == roundCount[1] && roundCount[1] == roundCount[2])) -> ((<> (Car[carPID[0]]@afterBarrier)) && (<> (Car[carPID[1]]@afterBarrier)) && (<> (Car[carPID[2]]@afterBarrier))) )}  
