public class Barrier {

	//is true if the barrier is online
	private boolean isOn = false; 
	//count of the number of cars at the barrier
	private int numberCarsAtBarrier = 0;
	//count of the number of cars at the barrier
	//that haven't left the barrier after it was 
	//either turned off or all cars arrived at the 
	//barrier
	private int numberCarsToAwake = 0;
	//is true if it's a shutdown that's making the
	//cars leave the barrier
	private boolean awaitExitBarrier		= false;
	//makes sure only one car can enter/exit the barrier at once
	private Semaphore entryExitProtocol 	= new Semaphore(1);
	//makes the cars wait for the rest of the cars at the barrier
	private Semaphore awaitAllCarsAtBarrier = new Semaphore(0);
	//is here so shutdown can wait for all cars to leave the barrier
	//before returning from the shutdown method
	private Semaphore finishedShutdown      = new Semaphore(0);
	

	public void sync(int carID) throws InterruptedException {
				
		//no need to no into the barrier if the barrier is off
		if (!isOn) return;
		
		entryExitProtocol.P();
		//the value if isOn might have changed while the 
		//car waited to enter the barrier
		if (!isOn) {
			entryExitProtocol.V();
			return;
		}
		
		numberCarsAtBarrier++;
		//if it's the last car then pass the baton 
		//to another car and leave the barrier
		if (numberCarsAtBarrier == CarControl.NUMBER_OF_CARS) {
			//need to wake up all cars that are in the gate
			//except this car because it won't wait
			//and except one more car because
			//atleast one car will be woken up no matter 
			//if there is another car or not waiting
			numberCarsToAwake = numberCarsAtBarrier - 2;
			numberCarsAtBarrier = 0;
			awaitAllCarsAtBarrier.V();
			//doesn't release entryExitProtocol so no cars can
			//enter the barrier while cars are leaving the barrier
			return;
		}
		entryExitProtocol.V();
		//wait here until all cars have arrived
		awaitAllCarsAtBarrier.P();
		//if more cars need to wake up
		//then wake up another car
		if (numberCarsToAwake > 0) {
			numberCarsToAwake--;
			awaitAllCarsAtBarrier.V();
			return; //Passing the entryExitProtocol baton.
		}
		//only the last car out of the barrier should
		//arrive her. If shutdown is in effect
		//then turn off the barrier
		//and release the shutdown semaphore
		//so the shutdown method can exit again
		if (awaitExitBarrier) {
			awaitExitBarrier = false;
			isOn = false;
			finishedShutdown.V();
		}
		//only the last car to leave the barrier should arrive
		//here and after it leaves, other cars should be allowed
		//into the barrier again
		entryExitProtocol.V();
		
		
	}
	
	public void on() throws InterruptedException {
		entryExitProtocol.P();
		isOn = true;
		entryExitProtocol.V();
	}
	
	public void off() throws InterruptedException {
		entryExitProtocol.P();
		isOn = false;
		
		//if any cars are still in the barrier
		//then release them by passing the baton
		if (numberCarsAtBarrier > 0) {
			numberCarsToAwake = numberCarsAtBarrier - 1;
			numberCarsAtBarrier = 0;
			awaitAllCarsAtBarrier.V();
		} 
		else { 
			entryExitProtocol.V();
		}
		
	}
	
	
	public void shutdown() throws InterruptedException {
		entryExitProtocol.P();
		
		//if any cars are in the barrier then wait
		//for all cars to enter and exit it before
		//exiting this method
		if (numberCarsAtBarrier > 0) {
			awaitExitBarrier = true;	
			entryExitProtocol.V();
			finishedShutdown.P();
		} 
		else {
			isOn = false;
			entryExitProtocol.V();	
		}		
	}
}
