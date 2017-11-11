#define DOWN 1
#define UP 2



#define P(X)  atomic{\
if \
:: ( (X) > 0) -> X = ((X)-1) \
fi }


#define V(X) atomic{X = (X+1)}

//Verify below with condition is correct(*)
#define signal() \
    condition1 =  (noUpCars == 0); \
    condition1 =   condition1 && (noDelayedDownCars > 0); \
    condition2 =  (noDownCars == 0); \
    condition2 =   condition2 && (noDelayedUpCars > 0); \
    condition3 = !(condition1 || condition2); \
    if \
    ::  (condition1) -> \
            noDelayedDownCars--; \
            V(waitDownCars) \
    ::  (condition2 && !condition1) -> \
            noDelayedUpCars--; \
            V(waitUpCars) \
    ::  (condition3) -> \
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
//(*) is temp shared between all processes, or are it a local varaible?

init{
    atomic{
	//Car 0 not included.
        carPID[1] = run Car(UP); 
        carPID[2] = run Car(UP);
        //carPID[3] = run Car(UP);
        //carPID[4] = run Car(UP);
        carPID[5] = run Car(DOWN);
        carPID[6] = run Car(DOWN);
        //carPID[7] = run Car(DOWN);
        //carPID[8] = run Car(DOWN);
    }
}

//(*) Se paa den anden, for at se spoersmaal til hjaelpelaere.

proctype Car(byte type)
{
	int temp = 0;
	bool condition1;
	bool condition2;
	bool condition3;

    do
    ::
        skip;  //Just to have a place marked as the gate.
gate:   //(*)Hvor langt rækker markoerene?
        skip;
        //Added eternal spinning.
        
        do
        :: true -> skip;
        :: true -> break;
        od;
       

entry:   
    
        if
        :: (type == DOWN) ->
                P(entryExitProtocol);
                if  ::  noUpCars >  0 ->
                            temp = noDelayedDownCars + 1;
                            noDelayedDownCars = temp;
                            V(entryExitProtocol);
                            P(waitDownCars)
                    ::  noUpCars == 0 -> skip;
                    ::  noUpCars <  0 -> assert(false);
                fi
                temp = noDownCars + 1;
                noDownCars = temp;
                signal();              
        :: (type == UP) ->
                P(entryExitProtocol);
                if  ::  noDownCars >  0 ->
                            temp = noDelayedUpCars + 1;
                            noDelayedUpCars = temp;
                            V(entryExitProtocol);
                            P(waitUpCars);
                    ::  noDownCars == 0 -> skip;
                    ::  noDownCars <  0 -> assert(false);
                fi
                temp = noUpCars + 1;
                noUpCars = temp;
                signal();          
        fi;
        
crit:

        if
        :: (type == DOWN) ->
                assert(noUpCars == 0 && noDownCars>0); //Tillader at 
                //(*) TODO add asserts.
                skip; //Here they are in the crit section.
        :: (type == UP)  ->
                assert(noDownCars == 0 && noUpCars>0);
                skip; //Here they are in the crit section.    
        fi;
                
            
exit:
   
        if
        :: (type == DOWN) ->
                P(entryExitProtocol);
                temp = noDownCars - 1;
                noDownCars = temp;
                signal();           
        :: (type == UP) ->
                P(entryExitProtocol);
                temp = noUpCars - 1;
                noUpCars = temp;
                signal();                     
        fi;
        
        
        
        do //TODO (*) Is this needed?
        :: true -> skip;
        :: true -> break;
        od;
        
        
    od;
}


/* Liveness properties (uncomment to verify) */
//Spørg ind til hvorfor ovenstaaende er formuleret korrekt.(*)

//ltl obl1  { []   ( (Car[carPID[1]]@entry) && [] ( !(Car[carPID[2]]@entry || Car[carPID[3]]@entry || Car[carPID[5]]@entry || Car[carPID[6]]@entry || Car[carPID[7]]@entry) ) -> <> (Car[carPID[1]]@crit)) }  

ltl obl1  { []   ( (Car[carPID[1]]@entry) && [] ( !(Car[carPID[2]]@entry  || Car[carPID[5]]@entry || Car[carPID[6]]@entry) ) -> <> (Car[carPID[1]]@crit)) }  
ltl obl2  { []   ( (Car[carPID[2]]@entry) && [] ( !(Car[carPID[1]]@entry  || Car[carPID[5]]@entry || Car[carPID[6]]@entry) ) -> <> (Car[carPID[2]]@crit)) }  
ltl obl5  { []   ( (Car[carPID[5]]@entry) && [] ( !(Car[carPID[2]]@entry  || Car[carPID[1]]@entry || Car[carPID[6]]@entry) ) -> <> (Car[carPID[5]]@crit)) }  
ltl obl6  { []   ( (Car[carPID[6]]@entry) && [] ( !(Car[carPID[2]]@entry  || Car[carPID[5]]@entry || Car[carPID[1]]@entry) ) -> <> (Car[carPID[6]]@crit)) }  

ltl res   { [] ( (Car[carPID[1]]@entry || Car[carPID[2]]@entry || Car[carPID[5]]@entry || Car[carPID[6]]@entry ) -> <> (Car[carPID[1]]@crit || Car[carPID[2]]@crit || Car[carPID[5]]@crit|| Car[carPID[6]]@crit ) ) }
//ltl fair1 { [] ( (Car[carPID[1]]@entry) -> <>  (Car[carPID[1]]@crit) ) } //TODO (*) Does not work.
 
