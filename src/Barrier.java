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
	private boolean awaitExitBarrier		= false;
	private Semaphore entryExitProtocol 	= new Semaphore(1);
	private Semaphore awaitAllCarsAtBarrier = new Semaphore(0);
	private Semaphore finishedShutdown      = new Semaphore(0);
	
	public Barrier() {
		
	}

	/** Uses combining tree method. Views the cars as a heap, where car 0 is the root, and so on.
	 * Ie. a heap based on the arrive array-
	 * @param carID
	 * @throws InterruptedException
	 */
	public void sync(int carID) throws InterruptedException {
		//onOffSwitch.P(); //TODO skal barrieren altid kunne switches fra, ie. ikke opleve starvation?
		//TODO ovenstaaende kode skal tilfoejes til step-3 branchen. Fiks fejlen i den.
				
		if (!isOn) return;
		
		entryExitProtocol.P();
		if (!isOn) {
			entryExitProtocol.V();
			return; //TODO (*) Maybe better fix?
		}
		numberCarsAtBarrier++;
		
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
			//awaitAllCarsAtBarrier.V();
			return; //Passing the entryExitProtocol baton.
		}
		if (awaitExitBarrier) { //Only true if one is the last car exiting the barrier, and shutdown is activated.
			awaitExitBarrier = false;
			isOn = false;
			finishedShutdown.V();
		}
		entryExitProtocol.V(); //Does maybe not need to be passed as baton?
		
		
	}
	
	public void on() throws InterruptedException {
		entryExitProtocol.P();
		isOn = true;
		entryExitProtocol.V();
		//TODO (*) What if cars already are at the barrier?
	}
	
	public void off() throws InterruptedException { //Takes O(NumberOfCars) time, plus maybe some waiting for cars just leaving or just entering.
		entryExitProtocol.P();
		isOn = false;
		
		if (numberCarsAtBarrier > 0) {
			//Simulates that all cars have arrived:
			numberCarsToAwake = numberCarsAtBarrier - 1;//All the cars at the barrier must be awoken
			numberCarsAtBarrier = 0;
			awaitAllCarsAtBarrier.V();
			return; //the awoken cars will switch of the entry-exit protocol themself.
		} else { 
			entryExitProtocol.V();
		}
		
	}
	
	
	public void shutdown() throws InterruptedException {
		entryExitProtocol.P();
		
		if (numberCarsAtBarrier > 0) { //TODO remember awaitExitAtBarrier
			awaitExitBarrier = true;	
			entryExitProtocol.V();
			finishedShutdown.P();
			//TODO doees not work corectly since the removal of onOffSwitch
		} else {
			isOn = false;
			entryExitProtocol.V();	
		}		
	}
}
