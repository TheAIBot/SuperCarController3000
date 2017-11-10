public class CriticalRegion {
	private int directedCarsInAlleyCount = 0;
	private static final int UP = 1;
	private static final int DOWN = -1;
	
	
	public synchronized void enter(int carNumber) throws InterruptedException {
		final int direction = (carNumber  <= 4) ? UP : DOWN;

		while (hasToWait(direction)) {
			wait();
		}

		directedCarsInAlleyCount += direction;
	}

	private synchronized boolean  hasToWait(int direction)
	{
		//direction is negative then directedCarsInAlleyCount
		//also has to be 0 or negative for the car to continue.
		//Other way around with posetive.
		return directedCarsInAlleyCount * direction < 0;
	}

	public synchronized void leave(int carNumber)  {
		final int direction = (carNumber  <= 4) ? UP : DOWN;

		directedCarsInAlleyCount -= direction;

		if (directedCarsInAlleyCount == 0) {
			notifyAll();
		}
	}
}
