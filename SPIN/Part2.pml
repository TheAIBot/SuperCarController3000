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


init{
    atomic{
	//Car 0 not included.
        carPID[1] = run Car(UP); 
        carPID[2] = run Car(UP);
        carPID[3] = run Car(UP);
        //carPID[4] = run Car(UP);
        carPID[5] = run Car(DOWN);
        carPID[6] = run Car(DOWN);
        carPID[7] = run Car(DOWN);
        //carPID[8] = run Car(DOWN);
    }
}

//(*) Husk at stille spørgsmål til hjælpelærene.
//Herunder:
//I forhold til obligness, skal vi tilføje nogle do :: true -> skip :: true -> break od, rundt omkring? Saaledes at vi kan vise obligness? Ellers giver det ikke mening, da assumptionen aldrig er sand. Paa den maade kan man vise at hvis en bil er den eneste der koerer rundt, saa vil den komme rundt over det hele.
//Hvordan fungerer markoerene som gate? Hvor meget afmaarker de?
//Ved en given ltl formel, hvis man f.eks. har [](P -> <> Q), hvorfor udtrykker P -> <> Q ikke det samme? F.eks. i forholde til fairness. Kan forstaa det hvis man f.eks. har R -> [](P -> <> Q), da det saa betyder at hvis R er sand, saa vil det derefter altid være sandt, at hvis P er sandt saa bliver Q opfyldt paa et tidspunkt. Det er kontra at hvis R er sand, saa hvis P er sand (nu), saa bliver Q paa et tidspunkt sand.
//Skal vi teste deadlock/livelock for mere end den kritiske sektion? Hvad skal vi helt præcist teste?
//Er det fint med opslittningen til to kritiske sektioner?
//En assert(false) giver en error?
//"warning: never claim + accept labels requires -a flag to fully verify" Hvad vil det sige?
//Er det fint at der er kode som SPIN siger ikke koeres?
//(*) Remember making things unatomic.
//(*) is temp shared between all processes, or are it a local varaible?
//Er det okay at history variablesne incrementeres non-atomic?
//"do :: true -> skip :: break od" Hvorfor ikke true -> break?
//Hvornår er en condition atomic? I forhold til critical references.
//Man kan vel godt ignorerer bil 0 i forhold til dette problem?
//I forhold til obligness, naar der staar [](!...), det dur vel kun naar der er en mulighed for et eternal loop? Men hvordan virker det i forhold til weak fairness?

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
                    ::  noUpCars <  0 -> assert(false);
                fi
                temp = noDownCars + 1;
                noDownCars = temp;
                signal();      
        
critDown:

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
critUp:
                //(*) TODO add asserts.
                assert(noDownCars == 0 && noUpCars>0);
                skip; //Here they are in the crit section.        
exitUp:
                P(entryExitProtocol);
                temp = noUpCars - 1;
                noUpCars = temp;
                signal();            
        ::  (type != DOWN && type != UP) -> 
other:
                assert(false) //not alowed.
        fi;
    od;
}


/* Liveness properties (uncomment to verify) */

//ltl obl1  { [] ( ((P1@entry) && [] (!P2@entry) ) -> <> (P1@crit)) }  //Spørg ind til hvorfor ovenstaaende er formuleret korrekt.(*) Ville den i det her tilfælde ikke også skulle sige det i forhold til exitsne?
//(*) Change below:
ltl res   { [] ( (Car[carPID[1]]@entryUp || Car[carPID[2]]@entryUp || Car[carPID[3]]@entryUp || Car[carPID[5]]@entryDown || Car[carPID[6]]@entryDown || Car[carPID[7]]@entryDown ) -> <> (Car[carPID[1]]@critUp || Car[carPID[2]]@critUp || Car[carPID[3]]@critUp || Car[carPID[5]]@critDown || Car[carPID[6]]@critDown || Car[carPID[7]]@critDown ) ) }
//ltl fair1 { [] ( (Car[carPID[1]]@entryUp) -> <>  (Car[carPID[1]]@critUp) ) } //TODO (*) Does not work.
 
