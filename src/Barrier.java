public class Barrier {
	
	private boolean isOn = false; 
	private boolean doShutdown = false;
	private int numberCarsAtBarrier = 0;
	private boolean isShutdownDone  = false;
	private boolean exitBarrier = false;

	public synchronized void sync() throws InterruptedException {
		if (!isOn && !doShutdown) {
			 return;
		}
		if (exitBarrier) {
			while (exitBarrier) {
				wait();
			}
		}

		numberCarsAtBarrier++;
		System.out.println(numberCarsAtBarrier);
		if (numberCarsAtBarrier == CarControl.NUMBER_OF_CARS) {
			boolean supposedToDoShutdown = doShutdown;
			off();
			if (!supposedToDoShutdown) {
				isOn = true;
			}

			exitBarrier = true;
			while (numberCarsAtBarrier > 1) {
				wait();
			}
			exitBarrier = false;
			notifyAll();
		}
		else {
			while (!exitBarrier && isOn) {
				wait();
			}
			if (numberCarsAtBarrier == 2) {
				notifyAll();	
			}
		}
		numberCarsAtBarrier--;
		System.out.println(numberCarsAtBarrier);		
	}
	
	public synchronized void on() {
		isOn = true;
		doShutdown = false;
	}
	
	public synchronized void off() {
		isOn = false;
		doShutdown = false;
		isShutdownDone = true;

		notifyAll();	
	}

	public synchronized void shutdown() throws InterruptedException {
		if (isOn && numberCarsAtBarrier > 0) {
			doShutdown = true;
			isShutdownDone = false;
			while (!isShutdownDone)
			{
				wait();
			}
		}
	}
}
