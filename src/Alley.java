public class Alley {
	private int dirCarCount = 0;
	private static final int UP = 1;
	private static final int DOWN = -1;
	
	public synchronized void enter(int carNumber) throws InterruptedException {
		final int dir = getDirectionFromCarNumber(carNumber);

		while (hasToWait(dir)) {
			wait();
		}

		dirCarCount += dir;
	}

	private synchronized boolean  hasToWait(int dir)
	{
		//direction is negative then dirCarCount
		//also has to be 0 or negative for the car to continue.
		//Other way around with posetive.
		return dirCarCount * dir < 0;
	}

	private int getDirectionFromCarNumber(int carNumber) {
		return (carNumber  <= 4) ? UP : DOWN;
	}

	public synchronized void leave(int carNumber)  {
		final int dir = getDirectionFromCarNumber(carNumber);

		dirCarCount -= dir;

		if (dirCarCount == 0) {
			notifyAll();
		}
	}
}
