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
bool isInBarrier[NUMBER_OF_CARS]; //TODO (*) correct?
int roundCount[NUMBER_OF_CARS]; //TODO (*) correct?

//togles:
bool isOn                   = true;

//Counters:
byte numberCarsAtBarrier    = 0;
byte numberCarsToAwake      = 0;

//Semaphores:
byte entryExitProtocol      = 1;
byte awaitAllCarsAtBarrier  = 0;

//(*) Remember making things unatomic.
//(*) is temp shared between all processes, or are it a local varaible?

init{
    atomic{
	//Car 0 not included.
        carPID[0]   = run Car(UP, 0); 
        carPID[1]   = run Car(UP, 1);
        carPID[2]   = run Car(UP, 2);
isInBarrier[0]      = false;
isInBarrier[1]      = false;
isInBarrier[2]      = false;
roundCount[0]       = 0;
roundCount[1]       = 0;
roundCount[2]       = 0;
        //carPID[3] = run Car(UP, 3);
        //carPID[4] = run Car(DOWN,4);
        //carPID[5] = run Car(DOWN,5);
        //carPID[6] = run Car(DOWN,6);
        //carPID[7] = run Car(DOWN,7);
	run Check_noGreaterDifference(); //(*) can one not just make the checker active?
    }
}


proctype Car(byte type; byte num)
{
	int temp = 0;

    do //No need to include atBarrier, as the car either is at the barrier, or it is not.
    ::
        skip;  
        
        do
        :: true -> skip; //(*) bare skip. Hvorfor dur det ikke med det?
        :: true -> break;
        od;

beforeBarrier:   
        
        do
        :: true -> skip; //(*) bare skip. Hvorfor dur det ikke med det?
        :: true -> break;
        od;

barrierEntry: 
	skip;
        
        //Using goto returnBarrier instead of an actual return

        roundCount[num] ++; //Allowed to be atomic.
        
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
        isInBarrier[num]   = true;
        
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

        isInBarrier[num] = false;
        
        do
        :: true -> skip;
        :: true -> break;
        od;
        
        
    od;
}

proctype Check_noGreaterDifference() { //TODO takes up a lot of space and ressources...
	do
	:: atomic{
		int minValue = 2147483647;
		int maxValue = 0;
		int i;
		for (i : 0 .. NUMBER_OF_CARS - 1) {
            if
            :: roundCount[i] < minValue -> minValue = roundCount[i];
            :: roundCount[i] > maxValue -> maxValue = roundCount[i];
            :: !(roundCount[i] < minValue || roundCount[i] > maxValue) -> skip;
            fi
		}
		assert(maxValue - minValue <= 1);
	}
	od;
}

/* Liveness properties (uncomment to verify) */
//Spørg ind til hvorfor ovenstaaende er formuleret korrekt.(*)

//ltl noGreaterDifference {[] ( roundCount[0] - roundCount[1] <= 1 && roundCount[1] -  roundCount[0] <= 1 )}
    //Meaning that a car can only be one turn ahead
    //Use an

//ltl noPassingBarrierWithoutOthers {[] ( (roundCount[0] > roundCount[1] && roundCount[0] > roundCount[2] &&  Car[carPID[0]]@afterBarrier) -> !(Car[carPID[1]]@beforeBarrier || Car[carPID[2]]@beforeBarrier))}

//ltl testPassing{[]( !( (roundCount[0] > roundCount[1] || roundCount[0] > roundCount[2]) &&  Car[carPID[0]]@afterBarrier) )}
	//(*) Ovenstående burde være sufficient?

//ltl testIncrement{! <> ( [](Car[carPID[0]]@beforeBarrier)) }
    //(*) OBS!!! Dur hvis weak fairness er sat til! ødelægger det hele.

//ltl testIncrement{[] ( ([](!isInBarrier[0]) &&  Car[carPID[1]]@barrierEntry && Car[carPID[2]]@barrierEntry ) -> [](!Car[carPID[1]]@afterBarrier && !Car[carPID[2]]@afterBarrier)) }
	//(*) OBS!!!! Viser kun noget uden weak fairness, da predecenten ellers aldrig er sand.
//ltl noIncrementUnlessAllAtGates {[]( [](Car[carPID[0]]@beforeBarrier) && Car[carPID[1]]@barrierEntry && Car[carPID[2]]@barrierEntry ->  [](!Car[carPID[1]]@afterBarrier && !Car[carPID[2]]@afterBarrier) )}
    //Burde fejle, da car 0 ikke har garanteret laveste round count.
    //Meaning that all cars must be at the gate, before the cars continue
    //Make a formula for each car.
    //Hvordan påvirker weak fairness ovenstående? (*) Check op.

    
    
    
    
//ltl passBarrier {[] ((Car[carPID[1]]@barrierEntry && Car[carPID[1]]@barrierEntry && [](isOn)) -> <> (Car[carPID[1]]@afterBarrier))} //Wrong. 

//ltl notPassBarrier {[] ( [] ! (isInBarrier[carPID[1]] && isInBarrier[carPID[2]]) && [](isOn) -> ! (<> (Car[carPID[1]]@afterBarrier)) )} //Should fail TODO  (*)

//ltl passBarrier {[] ((isInBarrier[carPID[1]] && numberCarsAtBarrier == 2 && [](isOn)) -> <> (Car[carPID[1]]@afterBarrier))}

//ltl passBarrier {[] ((isInBarrier[carPID[1]] && isInBarrier[carPID[2]] && [](isOn)) -> <> (Car[carPID[1]]@afterBarrier))} //Wrong. 
//!isInBarrier[carPID[1]]  &&


//ltl notPassBarrier { [] (    (Car[carPID[1]]@barrierEntry && [](isOn)) -> <> (Car[carPID[1]]@afterBarrier)) } //Shouldn't this be true?
//ltl passBarrier { [] (    (Car[carPID[1]]@barrierEntry && [](!isOn)) -> <> Car[carPID[1]]@afterBarrier) }


/*
//ltl obl1  { []   ( (Car[carPID[1]]@entry) && [] ( !(Car[carPID[2]]@entry || Car[carPID[3]]@entry || Car[carPID[5]]@entry || Car[carPID[6]]@entry || Car[carPID[7]]@entry) ) -> <> (Car[carPID[1]]@crit)) }  

ltl obl1  { []   ( (Car[carPID[1]]@entry) && [] ( !(Car[carPID[2]]@entry  || Car[carPID[5]]@entry || Car[carPID[6]]@entry) ) -> <> (Car[carPID[1]]@crit)) }  
ltl obl2  { []   ( (Car[carPID[2]]@entry) && [] ( !(Car[carPID[1]]@entry  || Car[carPID[5]]@entry || Car[carPID[6]]@entry) ) -> <> (Car[carPID[2]]@crit)) }  
ltl obl5  { []   ( (Car[carPID[5]]@entry) && [] ( !(Car[carPID[2]]@entry  || Car[carPID[1]]@entry || Car[carPID[6]]@entry) ) -> <> (Car[carPID[5]]@crit)) }  
ltl obl6  { []   ( (Car[carPID[6]]@entry) && [] ( !(Car[carPID[2]]@entry  || Car[carPID[5]]@entry || Car[carPID[1]]@entry) ) -> <> (Car[carPID[6]]@crit)) }  

ltl res   { [] ( (Car[carPID[1]]@entry || Car[carPID[2]]@entry || Car[carPID[5]]@entry || Car[carPID[6]]@entry ) -> <> (Car[carPID[1]]@crit || Car[carPID[2]]@crit || Car[carPID[5]]@crit|| Car[carPID[6]]@crit ) ) }
//ltl fair1 { [] ( (Car[carPID[1]]@entry) -> <>  (Car[carPID[1]]@crit) ) } //TODO (*) Does not work.
*/
