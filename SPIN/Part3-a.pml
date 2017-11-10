#define UP 1
#define DOWN 2
#define NUMBER_OF_CARS 2




#define P(X)  atomic{\
if \
:: ( (X) > 0) -> X = ((X)-1) \
fi }

#define V(X) atomic{X = (X+1)}


//We do not care about car 0, as it does not affect other cars
pid carPID[3]; //TODO (*) change back to size 9

//State variables, to signal where cars are:
bool isInBarrier[4]; //TODO (*) correct?

//togles:
bool isOn                   = false;

//Counters:
byte numberCarsAtBarrier    = 0;
byte numberCarsToAwake      = 0;

//Semaphores:
byte entryExitProtocol      = 1;
byte onOffSwitch            = 1;
byte awaitAllCarsAtBarrier  = 0;

//(*) Remember making things unatomic.
//(*) is temp shared between all processes, or are it a local varaible?

init{
    atomic{
	//Car 0 not included.
        carPID[1] = run Car(UP); 
        carPID[2] = run Car(UP);
isInBarrier[carPID[1]] = false;
isInBarrier[carPID[2]] = false;
        //carPID[3] = run Car(UP);
        //carPID[4] = run Car(UP);
        //carPID[5] = run Car(DOWN);
        //carPID[6] = run Car(DOWN);
        //carPID[7] = run Car(DOWN);
        //carPID[8] = run Car(DOWN);
    }
}

//(*) Se paa den anden, for at se spoersmaal til hjaelpelaere.

active proctype CarController(){
    int temp;
    isOn = true;
/*
    do
    ::  true -> //on();
        P(onOffSwitch); 
        isOn = true;
        V(onOffSwitch);
		
    ::  true -> //off(); 
        P(onOffSwitch);
		isOn = false;
		P(entryExitProtocol);

		if 
		::  (numberCarsAtBarrier > 0) ->
                temp = numberCarsAtBarrier - 1;
                numberCarsToAwake = temp;//All the cars at the barrier must be awoken
                numberCarsAtBarrier = 0;
                V(onOffSwitch);
                V(awaitAllCarsAtBarrier);
                //return; //the awoken cars will switch of the entry-exit protocol themself.
        :: !(numberCarsAtBarrier > 0) -> //else
                V(entryExitProtocol); //TODO (*) This code must be updated in branch step3.
                V(onOffSwitch);     //off();                 			
		fi;		
    
    //:: true -> skip;
    
    od
*/
}

proctype Car(byte type)
{
	int temp = 0;

    do //No need to include atBarrier, as the car either is at the barrier, or it is not.
    ::
        skip;  //Just to have a place marked as the gate.
        
beforeBarrier:   

        skip;
        //Added eternal spinning.
        
        do
        :: true -> skip;
        :: true -> break;
        od;

barrierEntry: //TODO (*) is the flag at the line below?
	skip;
        
        //Using goto returnBarrier instead of an actual return
        
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
                
        temp = numberCarsAtBarrier + 1;
        numberCarsAtBarrier = temp;
        isInBarrier[_pid] = true;
        
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
            //return; implicit by structure of if statements.
        :: !(numberCarsToAwake > 0) -> skip;
        fi;
        
        V(entryExitProtocol);
        

returnBarrier:
	skip;	
		
afterBarrier:

        isInBarrier[_pid] = false;
        
        do
        :: true -> skip;
        :: true -> break;
        od;
        
        
    od;
}


/* Liveness properties (uncomment to verify) */
//Spørg ind til hvorfor ovenstaaende er formuleret korrekt.(*)

//(*) Add thing verifying 0<=carsInBarrier <=9 and the likes


//ltl passBarrier {[] ((Car[carPID[1]]@barrierEntry && Car[carPID[1]]@barrierEntry && [](isOn)) -> <> (Car[carPID[1]]@afterBarrier))} //Wrong. 

ltl notPassBarrier {[] ( [] ! (isInBarrier[carPID[1]] && isInBarrier[carPID[2]]) && [](isOn) -> ! (<> (Car[carPID[1]]@afterBarrier)) )} //Should fail TODO  (*)

ltl passBarrier {[] ((isInBarrier[carPID[1]] && numberCarsAtBarrier == 2 && [](isOn)) -> <> (Car[carPID[1]]@afterBarrier))}

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