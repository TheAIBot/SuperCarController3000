public class CriticalRegion {
	//TODO one could make the critical region fair.
	private int upCarsCount   = 0; //Invariant: (noUpCars == 0 || noDownCars == 0)
	private int downCarsCount = 0; //Implemented as a variant of the reader/writer problem, with passing the baton.
	private int delayedDownCarsCount = 0;
	private int delayedUpCarsCount   = 0;
	private final Semaphore entryExitProtocol = new Semaphore(1);
	private final Semaphore waitUpCars 		  = new Semaphore(0);
	private final Semaphore waitDownCars 	  = new Semaphore(0);
	
	public void enter(int num) throws InterruptedException {
		if (num  <= 4) {
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

	public void leave(int num) throws InterruptedException  {
		if (num <= 4) {
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
		if (upCarsCount == 0 && delayedDownCarsCount > 0) {
			delayedDownCarsCount--;
			waitDownCars.V();
		} else if (downCarsCount == 0 && delayedUpCarsCount > 0) {
			delayedUpCarsCount--;
			waitUpCars.V();
		} else {
			entryExitProtocol.V();
		}
	}
}
