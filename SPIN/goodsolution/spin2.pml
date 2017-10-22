#define DOWN 1
#define UP 2

#define P(X)  atomic{ ( (X) > 0) -> X-- }
#define V(X) atomic{ X++ }

#define INC(X) temp = X; X = temp + 1;
#define DEC(X) temp = X; X = temp - 1;


int upCarsCount   = 0; //Invariant: (noUpCars == 0 || noDownCars == 0)
int downCarsCount = 0; //Implemented as a variant of the reader/writer problem, with passing the baton.
int delayedDownCarsCount = 0;
int delayedUpCarsCount   = 0;

//Semaphores
int entryExitProtocol = 1;
int waitUpCars           = 0;
int waitDownCars      = 0;

inline signal() {
	if :: (upCarsCount == 0 && delayedDownCarsCount > 0) ->
		DEC(delayedDownCarsCount);
		V(waitDownCars);
	//MAYBE ISSUE HERE BECAUSE NOT A REAL IFELSE
	:: (downCarsCount == 0 && delayedUpCarsCount > 0 &&
	    !(upCarsCount == 0 && delayedDownCarsCount > 0)) ->
		DEC(delayedUpCarsCount);
		V(waitUpCars);
	:: (!(upCarsCount == 0 && delayedDownCarsCount > 0) && 
	     !(downCarsCount == 0 && delayedUpCarsCount > 0)) ->
		V(entryExitProtocol);
	fi
}

inline enterDownCar() {
	P(entryExitProtocol);
	if :: (upCarsCount > 0) ->
		INC(delayedDownCarsCount);
		V(entryExitProtocol);
		P(waitDownCars);
	:: (!(upCarsCount > 0)) -> skip;
	fi
	INC(downCarsCount);
	signal();
}

inline enterUpCar()  {
	P(entryExitProtocol);
	if :: (downCarsCount > 0) ->
		INC(delayedUpCarsCount);
		V(entryExitProtocol);
		P(waitUpCars);
	:: (!(downCarsCount > 0)) -> skip;
	fi
	INC(upCarsCount);
	signal();
}

inline enter(num) {
	if :: (num  <= 4)  -> enterUpCar();
	:: (!(num  <= 4)) -> enterDownCar();
	fi
}

inline leaveDownCar()  {
	P(entryExitProtocol);
	DEC(downCarsCount);
	signal();
}

inline leaveUpCar()  {
	P(entryExitProtocol);
	DEC(upCarsCount);
	signal();
}

inline leave(num)  {
	if :: (num  <= 4)  -> leaveUpCar();
	:: (!(num  <= 4)) -> leaveDownCar();
	fi
}

proctype Car(byte carType) 
{
	int temp = 0;
	do :: 
		enter(carType);

		if :: (carType  <= 4)  -> 
			assert(upCarsCount > 0);
			assert(downCarsCount == 0);
		:: (!(carType  <= 4)) -> 
			assert(downCarsCount > 0);
			assert(upCarsCount == 0);
		fi
		
		leave(carType);
	od 
}

init {
	atomic {
		run Car(1);
		run Car(2);
		run Car(3);
		//run Car(4);

		run Car(5);
		run Car(6);
		run Car(7);
		//run Car(8);
	}
}