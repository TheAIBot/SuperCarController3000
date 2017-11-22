#define UP 1
#define DOWN 2
#define NUMBER_OF_CARS 3




#define P(X)  atomic{\
if \
:: ( (X) > 0) -> X = ((X)-1) \
fi }

#define V(X) atomic{X = (X+1)}


pid carPID[NUMBER_OF_CARS]; //carPID[i] is the PID of car i.
bool isInBarrier[NUMBER_OF_CARS]; //isInBarrier[i] is true, iff a car is in the barrier at that state.

//State variables, to signal where cars are:
int roundCount[NUMBER_OF_CARS]; //roundCount[i] is the number of times car i have arrived at the barrier.

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
        //carPID[3] = run Car(UP, 3);
isInBarrier[0]      = false;
isInBarrier[1]      = false;
isInBarrier[2]      = false;
//isInBarrier[3]      = false;
roundCount[0]       = 0;
roundCount[1]       = 0;
roundCount[2]       = 0;
//roundCount[3]       = 0;
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
        :: true -> skip; 
        :: true -> break;
        od;
        
        skip;
barrierEntry: 
        skip;
        
        //The sync() code.
        //Using goto returnBarrier instead of an actual return

        roundCount[num]++; //Allowed to be atomic.
        isInBarrier[num] = true;
        
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
		isInBarrier[num] = false;
		skip;
		
afterBarrier:
        skip;
        
        
    od;
}


//ltl safetyProperty{[]( !( (roundCount[0] > roundCount[1] || roundCount[0] > roundCount[2]) &&  Car[carPID[0]]@afterBarrier) )}

ltl livenessProperty{[] ( ( (isInBarrier[0] && isInBarrier[1] && isInBarrier[2]) &&  (roundCount[0] == roundCount[1] && roundCount[0] == roundCount[2])) -> ((<> (Car[carPID[0]]@afterBarrier)) && (<> (Car[carPID[1]]@afterBarrier)) && (<> (Car[carPID[2]]@afterBarrier)) ) )}  