import java.util.Arrays;

public class CriticalRegion {
	//TODO one could make the critical region fair.
	private int noUpCars   = 0; //Invariant: (noUpCars == 0 || noDownCars == 0)
	private int noDownCars = 0; //Implemented as a variant of the reader/writer problem, with passing the baton.
	private int noDelayedDownCars = 0;
	private int noDelayedUpCars   = 0;
	private Semaphore entryExitProtocol = new Semaphore(1);
	private Semaphore waitUpCars 		= new Semaphore(0);
	private Semaphore waitDownCars 		= new Semaphore(0);
	
	private int currentDirection = 0; //0=no direction, 1 = up, 2 = down.
	
	
	private Pos[] area;
	private CriticalRegion[][] dependentCriticalRegions = new CriticalRegion[CarControl.NUMBER_OF_CARS][0]; //Ordering might mater, so be careful.
	
	public CriticalRegion(Pos[] area, CriticalRegion[][] mapOfCriticalRegions) {
		this.area = area;
		for (int i = 0; i < area.length; i++) {
			mapOfCriticalRegions[area[i].col][area[i].row] = this;
		}
	}
	
	public void setDependentCriticalRegions(int no, CriticalRegion[] dependentRegions) {
		dependentCriticalRegions[no] = dependentRegions;
		
	}
	
	public boolean equals() {
		throw new Error("Make this method");		
	}
	
	public void enter(int no) {
		//TODO it is a variant of the reader/writer problem. It is implemented with the passing the baton technique.
		
		if (no  <= 4) {
			enterUpCar();
		} else {
			enterDownCar();
		}
		
		
		//for (int i = 0; i < dependentCriticalRegions[no].length; i++) {
			//dependentCriticalRegions[no][i].takeControl(no);
		//}
		
		
		//this.takeControl(no);
	}	
	
	
	
	
	
	private void enterDownCar() {
		//<await (noUpCars == 0) noDownCars++;>
		try {
			entryExitProtocol.P();
			if (noUpCars > 0) {	
				noDelayedDownCars++;
				entryExitProtocol.V();
				waitDownCars.P();
			}
			noDownCars++;
			signal();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void enterUpCar() {
		//<await (noDownCars == 0) noUpCars++;>
		try {
			entryExitProtocol.P();
			if (noDownCars > 0) {	
				noDelayedUpCars++;
				entryExitProtocol.V();
				waitUpCars.P();
			}
			noUpCars++;
			signal();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void leave(int no) {
		if (no <= 4) {
			leaveUpCar();
		} else leaveDownCar();
	    //this.giveUpControl();
	}
	
	private void leaveDownCar() {
		//<noDownCars--;>
		try {
			entryExitProtocol.P();
			noDownCars--;
			signal();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void leaveUpCar() {
		//<noUpCars--;>
		try {
			entryExitProtocol.P();
			noUpCars--;
			signal();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void signal() {
		if (noUpCars == 0 && noDelayedDownCars > 0) {
			noDelayedDownCars--;
			waitDownCars.V();
		} else if (noDownCars == 0 && noDelayedUpCars > 0) {
			noDelayedUpCars--;
			waitUpCars.V();
		} else {
			entryExitProtocol.V();
		}
	}
	
	/*
	private void takeControl(int no) {
		try {
			g.P();
			carWithPermission = no;
		} catch (InterruptedException e) {//(*) ???? What is this?
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void giveUpControl() {
		g.V();
	}
	*/

}
