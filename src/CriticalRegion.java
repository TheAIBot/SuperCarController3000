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
		//wait until there is no cars comming from the other side
		while (upCarsCount > 0) {
			wait();
		}
		//enter alley
		downCarsCount++;
	}

	private void enterUpCar() throws InterruptedException  {
		//wait until there is no cars comming from the other side
		while (downCarsCount > 0) {
			wait();
		}
		//enter alley
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
		//leave alley
		downCarsCount--;
		//if this was the last car in the alley
		//then notify all cars waiting that they can
		//now try to enter it again
		if (downCarsCount == 0) {
			notifyAll();
		}
	}

	private void leaveUpCar()  {
		//leave alley
		upCarsCount--;
		//if this was the last car in the alley
		//then notify all cars waiting that they can
		//now try to enter it again
		if (upCarsCount == 0) {
			notifyAll();
		}
	}
}
