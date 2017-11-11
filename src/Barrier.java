public class Barrier {
	
	private boolean isOn = false;
	private boolean doShutdown = false;
	private int carsInBarrier = 0;
	private boolean roundState = true;

	public synchronized void sync() throws InterruptedException {
		if (!isOn) {
			return;
		}

		final boolean carState = roundState;

		carsInBarrier++;
		if (carsInBarrier == CarControl.NUMBER_OF_CARS) {
			roundState = !roundState;
			isOn = !doShutdown;
			carsInBarrier = 0;
			notifyAll();
		}

		while (carState == roundState) {
			wait();
		}
	}
	
	public synchronized void on() {
		isOn = true;
		doShutdown = false;
	}
	
	public synchronized void off() {
		isOn = false;

		if (carsInBarrier > 0) {
			roundState = !roundState;
			carsInBarrier = 0;
			notifyAll();
		}
	}

	public synchronized void shutdown() throws InterruptedException {
		if (carsInBarrier > 0) {
			doShutdown = true;
			final boolean carState = roundState;
			while (carState == roundState) {
				wait();
			}
		}
		else {
			isOn = false;
		}
	}
}
