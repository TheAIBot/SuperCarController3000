import java.util.ArrayList;
import java.util.Arrays;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

/**
 * Based on the code from the book, where semaphores replaceses the normal booleans.
 * It is an implementation of the dissemeniation barrier.
 * TODO remember to describe why it is used, instead of other barriers, like the butterfly barrier.
 * TODO finish description(*)
 * Faa Andreas til at læse begge sektioner i bogen omkring dette.
 * @author jesper
 *
 */
public class Barrier {
	
	//TODO clean up code.
	
	private boolean isOn = false; 
	private int numberCarsAtBarrier = 0;
	
	public Barrier() {
	}

	/** Uses combining tree method. Views the cars as a heap, where car 0 is the root, and so on.
	 * Ie. a heap based on the arrive array-
	 * @param carID
	 * @throws InterruptedException
	 */
	public synchronized void sync(int carID) throws InterruptedException {
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
	
	public synchronized void on() throws InterruptedException {
		isOn = true;
	}
	
	public synchronized void off() throws InterruptedException { //Takes O(NumberOfCars) time, plus maybe some waiting for cars just leaving or just entering.
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
				} else return false;
			case 1:
			case 2:
			case 3:
			case 4:
				if (curpos.row == 6 && curpos.col == startPos.col) {
					return true;
				} else return false;
			case 5:
			case 6:
			case 7:
			case 8:
				if (curpos.row == 5 && curpos.col == startPos.col) {
					return true;
				} else return false;
			default:
				throw new Error("Switch-case does not handle the case where the carnumber = " + num);
		}
	}
	

}
