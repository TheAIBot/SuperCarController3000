public class Alley {
	//is a counter of how many cars are in the alley
	//and which direction they are from.
	//if there are 3 cars in the alley and they are
	//from the down direction, then the value of
	//the variable is -3. If there are 3 cars from up
	//then the value is 3.
	//there are 0 cars in the alley when the value is 0.
	private int dirCarCount = 0;
	private static final int UP = 1;
	private static final int DOWN = -1;
	
	
	public synchronized void enter(int carNumber) throws InterruptedException {
		//get direction from the car number
		final int dir = (carNumber  <= 4) ? UP : DOWN;

		//while there are cars from the other direction
		//wait for them all to leave
		while (hasToWait(dir)) {
			wait();
		}

		//enter the alley by adding the direction value
		dirCarCount += dir;
	}

	private synchronized boolean  hasToWait(int dir)
	{
		//direction is negative then dirCarCount
		//also has to be 0 or negative for the car to continue.
		//Other way around with positive.
		return dirCarCount * dir < 0;
	}

	public synchronized void leave(int carNumber)  {
		//get direction from the car number
		final int dir = (carNumber  <= 4) ? UP : DOWN;

		//leave alley
		dirCarCount -= dir;

		//if there are now no cars in the alley
		//then notify all other cars, that are
		//waiting to enter the alley, that they
		//can now try to enter the alle again
		if (dirCarCount == 0) {
			notifyAll();
		}
	}
}
