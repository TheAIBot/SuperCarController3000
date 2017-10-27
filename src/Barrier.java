public class Barrier {
	
	private boolean isOn = false; 
	private int numberCarsAtBarrier = 0;

	public synchronized void sync() throws InterruptedException {
		if (!isOn) {
			 return;
		}

		if (numberCarsAtBarrier < CarControl.NUMBER_OF_CARS) {
			numberCarsAtBarrier++;
			wait();
		}
		else {
			numberCarsAtBarrier = 0;
			notifyAll();
		}
	}
	
	public synchronized void on() {
		isOn = true;
	}
	
	public synchronized void off() { //Takes O(NumberOfCars) time, plus maybe some waiting for cars just leaving or just entering.
		isOn = false;

		if (numberCarsAtBarrier > 0) {
			numberCarsAtBarrier = 0;
			notifyAll();
		}		
	}
}
