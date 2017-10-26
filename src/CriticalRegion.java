import java.util.Arrays;

public class CriticalRegion {
	//TODO one could make the critical region fair.
	private int upCarsCount   = 0; //Invariant: (noUpCars == 0 || noDownCars == 0)
	private int downCarsCount = 0; //Implemented as a variant of the reader/writer problem, with passing the baton.
	private int delayedDownCarsCount = 0;
	private int delayedUpCarsCount   = 0;
	private final Semaphore entryExitProtocol = new Semaphore(1);
	private final Semaphore waitUpCars 		  = new Semaphore(0);
	private final Semaphore waitDownCars 	  = new Semaphore(0);
	private final Object lock = new Object();


	
	public void enter(int num) throws InterruptedException {
		//TODO it is a variant of the reader/writer problem. It is implemented with the passing the baton technique.
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
			try {
				waitDownCars.P();	
			} catch (InterruptedException e) {
				entryExitProtocol.P();
				delayedDownCarsCount--;
				entryExitProtocol.V();
				throw new InterruptedException();
			}
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
			try {
				waitUpCars.P();
			} catch (Exception e) {
				entryExitProtocol.P();
				delayedUpCarsCount--;
				entryExitProtocol.V();
				throw new InterruptedException();
			}
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
		try {
			entryExitProtocol.P();
		} finally {
			downCarsCount--;
			signal();
		}
	}

	private void leaveUpCar() throws InterruptedException  {
		//<noUpCars--;>
		try {
			entryExitProtocol.P();
		} finally {
			upCarsCount--;
			signal();
		}
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
