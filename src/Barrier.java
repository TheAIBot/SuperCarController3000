public class Barrier {
	
	private boolean isOn = false; 
	private boolean doShutDown = false;
	private int numberCarsAtBarrier = 0;

	public synchronized void sync() throws InterruptedException {
		if (!isOn && !doShutDown) {
			 return;
		}

		numberCarsAtBarrier++;
		if (numberCarsAtBarrier == CarControl.NUMBER_OF_CARS && doShutDown) {
			off();
		}
		else {
			wait();
		}
	}
	
	public synchronized void on() {
		isOn = true;
		doShutDown = false;
	}
	
	public synchronized void off() {
		isOn = false;
		doShutDown = false;

		if (numberCarsAtBarrier > 0) {
			numberCarsAtBarrier = 0;
			notifyAll();
		}		
	}

	public synchronized void shutdown() {
		if (numberCarsAtBarrier == CarControl.NUMBER_OF_CARS) {
			off();
		}
		else {
			doShutDown = true;
		}
	}
}
