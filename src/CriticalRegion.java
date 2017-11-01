public class CriticalRegion {
	private int upCarsCount   = 0;
	private int downCarsCount = 0;
	
	
	public synchronized void enter(int num) throws InterruptedException {
		if (num  <= 4) {
			enterUpCar();
		} else {
			enterDownCar();
		}
	}
	
	private void enterDownCar() throws InterruptedException {
		while (upCarsCount > 0) {
			wait();
		}
		downCarsCount++;
	}

	private void enterUpCar() throws InterruptedException  {
		while (downCarsCount > 0) {
			wait();
		}
		upCarsCount++;
	}

	public synchronized void leave(int num)  {
		if (num <= 4) {
			leaveUpCar();
		} else {
            leaveDownCar();
        }
	}
	
	private void leaveDownCar()  {
		downCarsCount--;
		notifyAll();
	}

	private void leaveUpCar()  {
		upCarsCount--;
		notifyAll();
	}
}
