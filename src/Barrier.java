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
	
	private final int numberOfStages;
	private boolean isOn = false; 
	private boolean[] inProgress = new boolean[CarControl.NUMBER_OF_CARS];
	private Semaphore	onOffSwitch = new Semaphore(1); //ensures that only one on/off operation is processed at a time.
	private Semaphore[] inProgressMarker;
	private Semaphore[] continueMarker;
	private Semaphore[] arriveMarker; //Kunne ogsaa lave en simplerer increment-basseret barrierer.
	
	public Barrier() {
		arriveMarker   	 = new Semaphore[CarControl.NUMBER_OF_CARS];
		continueMarker   = new Semaphore[CarControl.NUMBER_OF_CARS];
		inProgressMarker = new Semaphore[CarControl.NUMBER_OF_CARS];
		for (int i = 0; i < arriveMarker.length; i++) {
			arriveMarker[i]    	= new Semaphore(0);
			continueMarker[i]  	= new Semaphore(0);
			inProgressMarker[i]	= new Semaphore(1);
		}
		//numberOfStages = ceil(log2(NUMBER_OF_CARS))
		numberOfStages = (int) (Math.ceil((Math.log(CarControl.NUMBER_OF_CARS) / Math.log(2))));
	}

	/** Uses combining tree method. Views the cars as a heap, where car 0 is the root, and so on.
	 * Ie. a heap based on the arrive array-
	 * @param carID
	 * @throws InterruptedException
	 */
	public void sync(int carID) throws InterruptedException {
		//TODO (*) Should isOn be incapsulated by a semaphore?
		if (carID != 0) {
			System.out.println("Car " + carID + " at barrier, that is currently on: " + isOn);
			
			
		}
		
		//TODO do not remove below, needs mentioning in the report.
		//can lead to error/race-condition if it is only placed here, and not between the semaphore, with needsToLeave. Needs to be explained.
		if (!isOn) return; //TODO Maybe move down.
		
				
		inProgressMarker[carID].P();
		//boolean needsToLeave = !isOn;
		//if (!needsToLeave) {
			inProgress[carID] = true;			
		//}
		inProgressMarker[carID].V();
		
		//if (needsToLeave) return;
		
		if (isRoot(carID)) {
			arriveMarker[leftChild(carID)].P();
			arriveMarker[rightChild(carID)].P();
			continueMarker[leftChild(carID)].V();
			continueMarker[rightChild(carID)].V();
		} else if (isLeaf(carID)) {
			arriveMarker[carID].V();
			continueMarker[carID].P();
		} else { //isInternalNode
			arriveMarker[leftChild(carID)].P();
			arriveMarker[rightChild(carID)].P();
			arriveMarker[carID].V();
			continueMarker[carID].P();
			continueMarker[leftChild(carID)].V();
			continueMarker[rightChild(carID)].V();			
		}
		
		inProgressMarker[carID].P();
		inProgress[carID] = false;
		inProgressMarker[carID].V();
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

	/* Discarded, will use combining tree instead.
	public void sync(int carID) throws InterruptedException {
		//TODO not done(*)
		if (!isOn) return;
		int synchronizeDistance = 1;
		for (int i = 0; i < numberOfStages; i++) {
			arrive[carID].V();
			int indexCarToSynchronizeWith = (carID + synchronizeDistance) % CarControl.NUMBER_OF_CARS;
			arrive[indexCarToSynchronizeWith].P();
			synchronizeDistance = 2*synchronizeDistance;
		}
	}
	
	*/
	public void on() throws InterruptedException {
		onOffSwitch.P();
		isOn = true;
		onOffSwitch.V();
		//TODO (*) What if cars already are at the barrier?
	}
	/* Old:
	public void off() throws InterruptedException { //Takes O(NumberOfCars) time, plus maybe some waiting for cars just leaving or just entering.
		onOffSwitch.P();
		isOn = false;//Place at bottom? ask teacher.
		
		
		//TODO possible bug here, with a quick off() and on(), 
		//such that some of the markers have not been reset yet.
		for (int i = 0; i < inProgressMarker.length; i++) {
			inProgressMarker[i].P(); //TODO (*) is waiting here allowed? This means that all cars can wait on one car.
			if (!inProgress[i]) {
				//It hasn't reached the barrier yet, or it has just done it, without announcing its arrival.
				//We will do that, plus say that its children can continue:
				//TODO here is the error, no P() is made if the process that is the parent, is also not at the barrior.
				if (isRoot(i)) {
					continueMarker[leftChild(i)].V();
					continueMarker[rightChild(i)].V();					
				} else if (isLeaf(i)) {
					arriveMarker[i].V();					
				} else {
					arriveMarker[i].V();
					continueMarker[leftChild(i)].V();
					continueMarker[rightChild(i)].V();							
				}				
			}
			//Give control back to car, so it can pass through the barrier continuously:
			inProgressMarker[i].V();
		}

		onOffSwitch.V();
	}
	*/
	
	public void off() throws InterruptedException { //Takes O(NumberOfCars) time, plus maybe some waiting for cars just leaving or just entering.
		System.out.println("Initiate switching off");
		onOffSwitch.P();
		isOn = false;//Place at bottom? ask teacher.
		//TODO might be bug, if one switches the barrier off and on, while there are still cars leaving the barrier.
		
		boolean[] tempInProgress = new boolean[inProgress.length]; 
		//Saving the current state of the processes
		//TODO Might lead to bugs?
		for (int i = 0; i < tempInProgress.length; i++) {
			inProgressMarker[i].P();
			tempInProgress[i] = inProgress[i];
			inProgressMarker[i].V(); //Maybe not release as of yet.
		}
		
		
		//TODO possible bug here, with a quick off() and on(), 
		//such that some of the markers have not been reset yet.
		for (int i = 0; i < inProgressMarker.length; i++) {
			inProgressMarker[i].P(); //TODO (*) is waiting here allowed? This means that all cars can wait on one car.
			//inProgess[i] is now locked!
			//If it is not in progress, we will no announce its arrival + permission to continue:
			if (!tempInProgress[i]) {
				
				if (arriveMarker[i].toString().equals("1")) {
					System.out.println("Error");
				}
				
				//TODO here is the error, no P() is made if the process that is the parent, is also not at the barrior.
				if (isRoot(i)) {
					continueMarker[leftChild(i)].V();
					continueMarker[rightChild(i)].V();					
				} else if (isLeaf(i)) {
					arriveMarker[i].V();					
				} else {
					arriveMarker[i].V();
					continueMarker[leftChild(i)].V();
					continueMarker[rightChild(i)].V();							
				}				
			} else inProgressMarker[i].V(); //TODO leads to problems? tempInProgess must be used, if this is placed here.
		}
		
		//all of tempInProgess is locked:
		
		//For all the cars not at the barrier, we will now finish their sync job for them: Namely their P() on their semaphores:
		
		for (int i = 0; i < tempInProgress.length; i++) {
			if (!tempInProgress[i]) {
				System.out.println(i);
				System.out.println("Arrive = " + Arrays.toString(arriveMarker));
				System.out.println("Continue = " + Arrays.toString(continueMarker));
				//TODO this means that no cars can pass throught the barrier (again), before all cars have left it. Is that ok?
				if (isRoot(i)) {					
					arriveMarker[leftChild(i)].P();	
					arriveMarker[rightChild(i)].P();	
					/*
					if (!tempInProgress[leftChild(i)]) {
						arriveMarker[leftChild(i)].P();						
					}
					if (!tempInProgress[rightChild(i)]) {
						arriveMarker[rightChild(i)].P();						
					}
					*/
				} else if (isLeaf(i)) {
					continueMarker[i].P();
				} else {			
					arriveMarker[leftChild(i)].P();		
					arriveMarker[rightChild(i)].P();	
					/*
					if (!tempInProgress[leftChild(i)]) {
						arriveMarker[leftChild(i)].P();						
					}
					if (!tempInProgress[rightChild(i)]) {
						arriveMarker[rightChild(i)].P();						
					}			
					*/		
					continueMarker[i].P();
				}				
			}
		}
		
		
		//And now control will be given back to all cars:
		for (int i = 0; i < inProgressMarker.length; i++) {
			if (!tempInProgress[i]) {
				inProgressMarker[i].V();
			}
		}
		System.out.println("Arrive = " + Arrays.toString(arriveMarker));
		System.out.println("Continue = " + Arrays.toString(continueMarker));
		
		onOffSwitch.V();
		System.out.println("Switched off done.");
		
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
