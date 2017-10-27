public class Barrier {
	
	private boolean isOn = false; 
	private int numberCarsAtBarrier = 0;

	public synchronized void sync() throws InterruptedException {
		if (!isOn) {
			 return;
		}

		if (numberCarsAtBarrier < CarControl.NUMBER_OF_CARS) {
			numberCarsAtBarrier++;
			wait();
		}
		else {
			numberCarsAtBarrier = 0;
			notifyAll();
		}
	}
	
	public synchronized void on() {
		isOn = true;
	}
	
	public synchronized void off() { //Takes O(NumberOfCars) time, plus maybe some waiting for cars just leaving or just entering.
		isOn = false;

		if (numberCarsAtBarrier > 0) {
			numberCarsAtBarrier = 0;
			notifyAll();
		}		
	}

	public boolean atBarrier(Pos startPos, Pos curpos, int num) {
		switch (num) {
			case 0:
				if (curpos.row == 6 && curpos.col == 3) {
					return true;
				}
				break;
			case 1:
			case 2:
			case 3:
			case 4:
				if (curpos.row == 6 && curpos.col == startPos.col) {
					return true;
				}
				break;
			case 5:
			case 6:
			case 7:
			case 8:
				if (curpos.row == 5 && curpos.col == startPos.col) {
					return true;
				}
				break;
			default:
				throw new Error("Switch-case does not handle the case where the carnumber = " + num);
		}

		return false;
	}
	

}
