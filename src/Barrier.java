public class Barrier {
	
	private boolean isOn = false; 
	private boolean doShutdown = false;
	private int numberCarsAtBarrier = 0;
	private boolean isShutdownDone  = false;
	private boolean exitBarrier = false;

	public synchronized void sync() throws InterruptedException {
		//new cars can't enter the barrier 
		//because they won't get notified 
		//to leave
		if (exitBarrier) {
			while (exitBarrier) {
				wait();
			}
		}

		//only enter barrier if it's on
		if (!isOn && !doShutdown) {
			return;
		}

		numberCarsAtBarrier++;
		//if all cars are at the barrier then release them all
		if (numberCarsAtBarrier == CarControl.NUMBER_OF_CARS) {
			off();
			isOn = !doShutdown;
		}

		//wait at barrier until all cars are at the barrier
		while (!exitBarrier) {
			wait();
		}

		numberCarsAtBarrier--;		
		//if this is the last car leaving the barrier 
		//then allow cars to enter the barrier again
		if (numberCarsAtBarrier == 0) {
			exitBarrier = false;
			doShutdown = false;
			//there might be threads waiting to enter 
			//that are sleeping in the top wait call
			notifyAll();
		}
	}
	
	public synchronized void on() {
		isOn = true;
		doShutdown = false;
	}
	
	public synchronized void off() {
		exitBarrier = true;
		isOn = false;
		isShutdownDone = true;
		notifyAll();	
	}

	public synchronized void shutdown() throws InterruptedException {
		if (isOn && numberCarsAtBarrier > 0) {
			doShutdown = true;
			isShutdownDone = false;
			//wait for all cars to begin exiting the barrier.
			//exitBarrier can't be used here because it won't wait 
			//for this thread to go out of this function before
			//it's set back to false
			while (!isShutdownDone)
			{
				wait();
			}
		}
	}
}
