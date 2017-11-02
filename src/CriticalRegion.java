public class CriticalRegion {
	private int[] carsFromDirectionCount = new int[2];
	private static final int UP = 0;
	private static final int DOWN = 1;
	
	
	public synchronized void enter(int num) throws InterruptedException {
		final int direction = (num  <= 4) ? UP : DOWN;
		final int otherDirection = (direction == UP) ? DOWN : UP;

		//wait until there is no cars comming from the other direction
		while (carsFromDirectionCount[otherDirection] > 0) {
			wait();
		}
		//enter alley from this direction
		carsFromDirectionCount[direction]++;
	}

	public synchronized void leave(int num)  {
		final int direction = (num  <= 4) ? UP : DOWN;

		//leave alley from this direction
		carsFromDirectionCount[direction]--;
		//if this was the last car in the alley
		//then notify all cars waiting that they can
		//now try to enter it again
		if (carsFromDirectionCount[direction] == 0) {
			notifyAll();
		}
	}
}
