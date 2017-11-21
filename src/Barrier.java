public class Barrier {

	//is true if the barrier is turned on
	private boolean isOn = false;
	//is true if the barrier is currently shutting down
	private boolean doShutdown = false;
	//count of how many cars are in the barrier
	private int carsInBarrier = 0;
	//count of how many cars has to wake up
	private int carsToWakeUp = 0;
	private boolean roundState = true;

	public synchronized void sync() throws InterruptedException {
		//i the barrier is offline
		//then go through the barrier
		if (!isOn) {
			return;
		}

		//opy to local, so it can be checked
		//later if roundState has changed value
		final boolean carState = roundState;

		carsInBarrier++;
		//if this is the last car to enter the barrier
		//then change roundState and wake up all the waiting
		//Cars so they can leave the barrier
		if (carsInBarrier == CarControl.NUMBER_OF_CARS) {
			roundState = !roundState;
			//if shutting down then turn off the barrier
			isOn = !doShutdown;
			carsToWakeUp = carsInBarrier;
			carsInBarrier = 0;
			notifyAll();
		}

		while (carState == roundState) {
			wait();
		}

		carsToWakeUp--;
		//if this is the last car out of the barrier
		//then notify all threads because
		//on() might be waiting for all threads
		//to leave the barrier
		if(carsToWakeUp == 0){
			notifyAll();
		}
	}
	
	public synchronized void on() {
		//can't enter the barrier while
		//cars are leaving the barrier
		//because that could lead to a deadlock
		//if off is called right after
		while (carsToWakeUp > 0){
			try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		isOn = true;
		doShutdown = false;
	}
	
	public synchronized void off() {
		isOn = false;

		//if any cars are in the barrier
		//then release the cars
		if (carsInBarrier > 0) {
			roundState = !roundState;
			carsToWakeUp = carsInBarrier;
			carsInBarrier = 0;
			notifyAll();
		}
	}

	public synchronized void shutdown() throws InterruptedException {
		//can only shutdown if there are cars
		//in the barrier
		if (carsInBarrier > 0) {
			doShutdown = true;
			final boolean carState = roundState;
			//wait for all cars to leave the barrier
			//before retuning again because
			//that's what the gui require in order
			//to show the shutdown on the screen
			while (carState == roundState) {
				wait();
			}
		}
		else {
			isOn = false;
		}
	}
}
