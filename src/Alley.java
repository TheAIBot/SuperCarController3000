public class Alley {
	//Invariant: (noUpCars == 0 || noDownCars == 0)
	//Implemented as a variant of the reader/writer problem, with passing the baton.

	//number of cars from directino that are in the alley
	private int upCarsCount   = 0; 
	private int downCarsCount = 0; 

	//number of cars from direction that's waiting to enter the alley
	private int delayedDownCarsCount = 0;
	private int delayedUpCarsCount   = 0;

	//makes sure that only one car can enter the alley at a time
	private final Semaphore entryExitProtocol = new Semaphore(1);

	//cars will wait on these objects until they are allowed inside the alley
	private final Semaphore waitUpCars 		  = new Semaphore(0);
	private final Semaphore waitDownCars 	  = new Semaphore(0);
	
	
	public void enter(int carNumber) throws InterruptedException {
		//separate car types from car number
		if (carNumber  <= 4) {
			enterUpCar();
		} else {
			enterDownCar();
		}
	}
	
	private void enterDownCar() throws InterruptedException {
		//<await (noUpCars == 0) noDownCars++;>
        entryExitProtocol.P();
        if (upCarsCount > 0) {	
            delayedDownCarsCount++;
            entryExitProtocol.V();
            waitDownCars.P();
        }
        downCarsCount++;
        signal();
	}

	private void enterUpCar() throws InterruptedException  {
		//<await (noDownCars == 0) noUpCars++;>
        entryExitProtocol.P();
        if (downCarsCount > 0) {	
            delayedUpCarsCount++;
            entryExitProtocol.V();
            waitUpCars.P();
        }
        upCarsCount++;
        signal();
	}

	public void leave(int carNumber) throws InterruptedException  {
		//separate car types from car number
		if (carNumber <= 4) {
			leaveUpCar();
		} else {
            leaveDownCar();
        }
	}
	
	private void leaveDownCar() throws InterruptedException  {
		//<noDownCars--;>
        entryExitProtocol.P();
        downCarsCount--;
        signal();
	}

	private void leaveUpCar() throws InterruptedException  {
		//<noUpCars--;>
        entryExitProtocol.P();
        upCarsCount--;
        signal();
	}

	private void signal() {
		//no cars in alley and there are cars from down that are waiting
		if (upCarsCount == 0 && delayedDownCarsCount > 0) {
			delayedDownCarsCount--;
			waitDownCars.V();
		} 
		//no cars in the alley and there are cars from up that are waiting
		else if (downCarsCount == 0 && delayedUpCarsCount > 0) {
			delayedUpCarsCount--;
			waitUpCars.V();
		} 
		//no cars waiting to enter the alley
		else {
			entryExitProtocol.V();
		}
	}
}
