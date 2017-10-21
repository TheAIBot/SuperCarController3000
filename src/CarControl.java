//Prototype implementation of Car Control
//Mandatory assignment
//Course 02158 Concurrent Programming, DTU, Fall 2017

//Hans Henrik Lovengreen     Oct 9, 2017


import java.awt.Color;

class Gate {
	
	int carID;
    Semaphore g = new Semaphore(0);
    Semaphore e = new Semaphore(1);
    
    Semaphore kage;
    boolean isopen = false;
    boolean hasLeftGates = false;
    
    public Gate(Semaphore kage, int carID) {
    	this.kage = kage;
    	this.carID = carID;
    }

    public void pass() throws InterruptedException {
    	
        g.P(); 
        g.V();
        
    }

    public void open() {
        try { e.P(); } catch (InterruptedException e) {}
        if (!isopen) { g.V();  isopen = true; }
        e.V();
    }

    public void close() {
        try { e.P(); } catch (InterruptedException e) {}
        if (isopen) { 
            try { g.P(); } catch (InterruptedException e) {}
            isopen = false;
        }
        e.V();
    }

}

class Car extends Thread {

    int basespeed = 100;             // Rather: degree of slowness
    int variation =  50;             // Percentage of base speed

    CarDisplayI cd;                  // GUI part
    
    CriticalRegion currentCriticalRegion;
    CriticalRegion[][] mapCriticalRegions;
    Semaphore[][] mapOfCars;

    int no;                          // Car number
    Pos startpos;                    // Startpositon (provided by GUI)
    Pos barpos;                      // Barrierpositon (provided by GUI)
    Color col;                       // Car  color
    Gate mygate;                     // Gate at startposition


    int speed;                       // Current car speed
    Pos curpos;                      // Current position 
    Pos newpos;                      // New position to go to

    public Car(int no, CarDisplayI cd, Gate g, CriticalRegion[][] mapCriticalRegions, Semaphore[][] mapOfCars) {

        this.no = no;
        this.cd = cd;
        mygate = g;
        startpos = cd.getStartPos(no);
        barpos = cd.getBarrierPos(no);  // For later use
        
        this.mapCriticalRegions = mapCriticalRegions;
        this.mapOfCars = mapOfCars;
       
        col = chooseColor();

        // do not change the special settings for car no. 0
        if (no==0) {
            basespeed = 0;  
            variation = 0; 
            setPriority(Thread.MAX_PRIORITY); 
        }
    }

    public synchronized void setSpeed(int speed) { 
        if (no != 0 && speed >= 0) {
            basespeed = speed;
        }
        else
            cd.println("Illegal speed settings");
    }

    public synchronized void setVariation(int var) { 
        if (no != 0 && 0 <= var && var <= 100) {
            variation = var;
        }
        else
            cd.println("Illegal variation settings");
    }

    synchronized int chooseSpeed() { 
        double factor = (1.0D+(Math.random()-0.5D)*2*variation/100);
        return (int) Math.round(factor*basespeed);
    }

    private int speed() {
        // Slow down if requested
        final int slowfactor = 3;  
        return speed * (cd.isSlow(curpos)? slowfactor : 1);
    }

    Color chooseColor() { 
        return Color.blue; // You can get any color, as longs as it's blue 
    }

    Pos nextPos(Pos pos) {
        // Get my track from display
        return cd.nextPos(no,pos);
    }

    boolean atGate(Pos pos) {
        return pos.equals(startpos);
    }

    
    
   public void run() {
        try {
        	//Spørgsmål: Er man garanteret, at bilerne altid kører med den angivne hastighed, konstant, hele vejen rundt?
        	//Min umiddelbare tanke er nej, da de kører på forskellige tråde.
        	
        	//Cannot start in a critical region, so that is not neccessary to check here.
            speed = chooseSpeed();
            curpos = startpos;
            cd.mark(curpos,col,no);

            while (true) { 
                sleep(speed());
  
                if (atGate(curpos)) { 
                    mygate.pass(); 
                    speed = chooseSpeed();
                }
                

                newpos = nextPos(curpos);
                
                CriticalRegion nextCriticalRegion = mapCriticalRegions[newpos.row][newpos.col];
                
                //TODO is this the correct placement of the code?
                //Entering another critical region:
                //TODO ville det være bedre at bruge noget kode ligesom med gatesne? I forhold til semaforene
                if (nextCriticalRegion != null && !nextCriticalRegion.equals(currentCriticalRegion)) {
                	//System.out.println("Enter car no " + no);
					nextCriticalRegion.enter(no);
				}
                
                mapOfCars[newpos.row][newpos.col].P();
                
				                
                
                	
                
                //  Move to new position 
                cd.clear(curpos);
                cd.mark(curpos,newpos,col,no);
                sleep(speed());
                cd.clear(curpos,newpos);
                cd.mark(newpos,col,no);     
                

                mapOfCars[curpos.row][curpos.col].V();
                
                curpos = newpos;           
                //Must not leave, before having got permission to enter.
                //Leaving current critical region:
                
                if (currentCriticalRegion != null && !currentCriticalRegion.equals(nextCriticalRegion)) {
                	//System.out.println("Leave car no " + no);
					currentCriticalRegion.leave(no);
				}
				currentCriticalRegion = nextCriticalRegion;
				

            }

        } catch (Exception e) {
            cd.println("Exception in Car no. " + no);
            System.err.println("Exception in Car no. " + no + ":" + e);
            e.printStackTrace();
        }
    }

private boolean isEnteringAlley() {
	// TODO Auto-generated method stub
	return false;
}

}

public class CarControl implements CarControlI{

	public static final int NUMBER_OF_CARS = 9;
	
    CarDisplayI cd;           // Reference to GUI
    Car[]  car;               // Cars
    Gate[] gate;              // Gates
    CriticalRegion[][] mapOfCriticalRegions = new CriticalRegion[11][12];
    Semaphore[][] mapOfCars = new Semaphore[11][12];
    
    
    
    Semaphore allowedNoCars	= new Semaphore(1);
    
        
    Semaphore allClockwise	= new Semaphore(0);
    Semaphore allCounterClockwise = new Semaphore(1);

    public CarControl(CarDisplayI cd) {
        this.cd = cd;
        car  = new  Car[NUMBER_OF_CARS];
        gate = new Gate[NUMBER_OF_CARS];
        initializeCriticalRegions();

        for (int no = 0; no < NUMBER_OF_CARS; no++) {
            gate[no] = new Gate(allowedNoCars, no);
            car[no]  = new Car(no,cd,gate[no], mapOfCriticalRegions, mapOfCars);
            car[no].start();
        } 
    }
    
    private void initializeCriticalRegions() {
	    CriticalRegion alley = new CriticalRegion(new Pos[] {new Pos(0, 1), new Pos(0, 2), new Pos(0, 3), new Pos(0, 4), new Pos(0,  5),
	 		   						 			 			 new Pos(0, 6), new Pos(0, 7), new Pos(0, 8), new Pos(0, 9), new Pos(0, 10),
	 		   						 			 			 new Pos(1,1), new Pos(2, 1)}, mapOfCriticalRegions);
	    //CriticalRegion alleyEntrance = new CriticalRegion(new Pos[] {new Pos(1,1), new Pos(2, 1)}, mapOfCriticalRegions);
	    
	    CriticalRegion[] alleyDependence = new CriticalRegion[] {};//{alleyEntrance};	    
	    alley.setDependentCriticalRegions(5, alleyDependence);
	    alley.setDependentCriticalRegions(6, alleyDependence);
	    alley.setDependentCriticalRegions(7, alleyDependence);
	    alley.setDependentCriticalRegions(8, alleyDependence);
	    
	    /*
	    CriticalRegion[] alleyEntranceDependence = new CriticalRegion[]{alley};	     
	    alleyEntrance.setDependentCriticalRegions(3, alleyEntranceDependence);
	    alleyEntrance.setDependentCriticalRegions(4, alleyEntranceDependence);
	    */
	    
	    for (int i = 0; i < mapOfCars.length; i++) {
	    	for (int j = 0; j < mapOfCars[i].length; j++) {
				mapOfCars[i][j] = new Semaphore(1);
			}
	    }
	    
	    // TODO Auto-generated method stub
	    //throw new Error("Make this");
	   
   	}
   	

//private void hasPassedGate(int carID) {
	   //oneCarAtATime.V();
   //}

   public void startCar(int no) { //Hvorfor glitcher den, hvis man sætter en semafor her?
	   //try {	oneCarAtATime.P(); } catch (InterruptedException e) {e.printStackTrace();} //Skal vi bekymre os om disse? (*)
       gate[no].open();
   }

   public void stopCar(int no) {
       gate[no].close();
   }

   public void barrierOn() { 
       cd.println("Barrier On not implemented in this version");
   }

   public void barrierOff() { 
       cd.println("Barrier Off not implemented in this version");
   }

   public void barrierShutDown() { 
       cd.println("Barrier shut down not implemented in this version");
       // This sleep is for illustrating how blocking affects the GUI
       // Remove when shutdown is implemented.
       try { Thread.sleep(3000); } catch (InterruptedException e) { }
       // Recommendation: 
       //   If not implemented call barrier.off() instead to make graphics consistent
   }

   public void setLimit(int k) { 
       cd.println("Setting of bridge limit not implemented in this version");
   }

   public void removeCar(int no) { 
       cd.println("Remove Car not implemented in this version");
   }

   public void restoreCar(int no) { 
       cd.println("Restore Car not implemented in this version");
   }

   /* Speed settings for testing purposes */

   public void setSpeed(int no, int speed) { 
       car[no].setSpeed(speed);
   }

   public void setVariation(int no, int var) { 
       car[no].setVariation(var);
   }

}






