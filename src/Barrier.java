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
	private int numberCarsToAwake = 0;
	private Semaphore onOffSwitch 			= new Semaphore(1);
	private Semaphore entryExitProtocol 	= new Semaphore(1);
	private Semaphore awaitAllCarsAtBarrier = new Semaphore(0);
	
	public Barrier() {
	}

	/** Uses combining tree method. Views the cars as a heap, where car 0 is the root, and so on.
	 * Ie. a heap based on the arrive array-
	 * @param carID
	 * @throws InterruptedException
	 */
	public void sync(int carID) throws InterruptedException {
		onOffSwitch.P(); //TODO skal barrieren altid kunne switches fra, ie. ikke opleve starvation?
		//TODO ovenstaaende kode skal tilfoejes til step-3 branchen. Fiks fejlen i den.
		if (!isOn) return;
		
		entryExitProtocol.P();
		if (!isOn) return; //Maybe better fix?
		onOffSwitch.V();
		numberCarsAtBarrier++;
		//System.out.println("nB " + numberCarsAtBarrier);
		//System.out.println("nA " + numberCarsToAwake);
		if (numberCarsAtBarrier == CarControl.NUMBER_OF_CARS) {
			numberCarsToAwake = numberCarsAtBarrier - 2;
			numberCarsAtBarrier = 0; //All cars must arrive at the barrier again.
			awaitAllCarsAtBarrier.V();
			return; //Does not increment entryExitProtocol, as the baton is passed down to the awoken cars.
		}
		entryExitProtocol.V();
		awaitAllCarsAtBarrier.P();
		if (numberCarsToAwake > 0) {
			numberCarsToAwake--;
			awaitAllCarsAtBarrier.V();
			return; //Passing the entryExitProtocol baton.
		}
		entryExitProtocol.V(); //Does maybe not need to be passed as baton?
		
		
	}
	
	private int parent(int carID) {
		return (carID-1)/2;
	}
	
	private int leftChild(int carID) {
		return 2*carID + 1;
	}
	
	private int rightChild(int carID) {
		return 2*carID + 2;
	}
	
	
	private boolean isLeaf(int carID) {
		return (2*carID + 1) > (CarControl.NUMBER_OF_CARS - 1); //if it has no children, it is a leaf.
	}

	private boolean isRoot(int carID) {
		return carID == 0;
	}
	
	public void on() throws InterruptedException {
		onOffSwitch.P();
		isOn = true;
		onOffSwitch.V();
		//TODO (*) What if cars already are at the barrier?
	}
	
	public void off() throws InterruptedException { //Takes O(NumberOfCars) time, plus maybe some waiting for cars just leaving or just entering.
		onOffSwitch.P();
		isOn = false;
		entryExitProtocol.P();

		if (numberCarsAtBarrier > 0) {
			//Simulates that all cars have arrived:
			numberCarsToAwake = numberCarsAtBarrier - 1;//All the cars at the barrier must be awoken
			numberCarsAtBarrier = 0;
			onOffSwitch.V();
			awaitAllCarsAtBarrier.V();
			return; //the awoken cars will switch of the entry-exit protocol themself.
			
		}
		entryExitProtocol.V();
		onOffSwitch.V();
		
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
