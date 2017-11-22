import java.awt.Color;

class Gate {
	
	int carID;
    Semaphore g = new Semaphore(0);
    Semaphore e = new Semaphore(1);
    
    boolean isopen = false;
    boolean hasLeftGates = false;
    
    public Gate(int carID) {
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
    
    final Alley[][] mapCriticalRegions;
    final Semaphore[][] mapOfCars;
    final Semaphore carStopper;

    int num;                          // Car number
    Pos startpos;                    // Startpositon (provided by GUI)
    Pos barpos;                      // Barrierpositon (provided by GUI)
    Color col;                       // Car  color
    Gate mygate;                     // Gate at startposition


    int speed;                       // Current car speed
    Pos curpos;                      // Current position

    public Car(int no, CarDisplayI cd, Gate g, Alley[][] mapCriticalRegions, Semaphore[][] mapOfCars, Semaphore carStopper) {

        this.num = no;
        this.cd = cd;
        mygate = g;
        startpos = cd.getStartPos(no);
        barpos = cd.getBarrierPos(no);  // For later use
        
        this.mapCriticalRegions = mapCriticalRegions;
        this.mapOfCars = mapOfCars;
        this.carStopper = carStopper;
       
        col = chooseColor();

        // do not change the special settings for car no. 0
        if (no==0) {
            basespeed = 0;  
            variation = 0; 
            setPriority(Thread.MAX_PRIORITY); 
        }
    }

    public synchronized void setSpeed(int speed) { 
        if (num != 0 && speed >= 0) {
            basespeed = speed;
        }
        else
            cd.println("Illegal speed settings");
    }

    public synchronized void setVariation(int var) { 
        if (num != 0 && 0 <= var && var <= 100) {
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
        return cd.nextPos(num,pos);
    }

    boolean atGate(Pos pos) {
        return pos.equals(startpos);
    }

    
    
   public void run() {
        try {
        	//Cannot start in a critical region, so that is not neccessary to check here.
            speed = chooseSpeed();
            curpos = startpos;
            cd.mark(curpos,col,num);
            Alley currentCriticalRegion = null;

            while (true) { 
                sleep(speed());
  
                if (atGate(curpos)) { 
                    mygate.pass(); 
                    speed = chooseSpeed();
                }

                final Pos newpos = nextPos(curpos);
                final Alley nextCriticalRegion = mapCriticalRegions[newpos.row][newpos.col];
                //if at critical region then enter it before reserving the tile. otherwise a deadlock
                //can occur
                if (nextCriticalRegion != null && !nextCriticalRegion.equals(currentCriticalRegion)) {
					nextCriticalRegion.enter(num);
				}
                
                //reserve next tile
                mapOfCars[newpos.row][newpos.col].P();
                
                //  Move to new position 
                cd.clear(curpos);
                cd.mark(curpos,newpos,col,num);
                sleep(speed());
                cd.clear(curpos,newpos);
                cd.mark(newpos,col,num);     
                
                //release old tile
                mapOfCars[curpos.row][curpos.col].V();
                
                curpos = newpos;           

                //if leaving a critical region then leave it
                if (currentCriticalRegion != null && !currentCriticalRegion.equals(nextCriticalRegion)) {
					currentCriticalRegion.leave(num);
				}
				currentCriticalRegion = nextCriticalRegion;
                
                //here for testing purposes
                carStopper.P();
                carStopper.V();
            }

        } catch (Exception e) {
            cd.println("Exception in Car no. " + num);
            System.err.println("Exception in Car no. " + num + ":" + e);
            e.printStackTrace();
        }
    }
}

public class CarControl implements CarControlI{

	public static final int NUMBER_OF_CARS = 9;
	
    CarDisplayI cd;           // Reference to GUI
    Car[]  car;               // Cars
    Gate[] gate;              // Gates

    //a map showing where different critical sections are located
    private final Alley[][] mapOfCriticalRegions = new Alley[11][12];
    //used to make sure that the car don't run into each other
    private final Semaphore[][] mapOfCars = new Semaphore[11][12];
    //is here for testing purposes.
    //makes it possible to pause all the cars and then resume
    private final Semaphore carsStopper = new Semaphore(NUMBER_OF_CARS);

    public CarControl(CarDisplayI cd) {
        this.cd = cd;
        car  = new  Car[NUMBER_OF_CARS];
        gate = new Gate[NUMBER_OF_CARS];
        //create the critical regions that are on the playground
        initializeCriticalRegions();

        for (int no = 0; no < NUMBER_OF_CARS; no++) {
            gate[no] = new Gate(no);
            car[no]  = new Car(no,cd,gate[no], mapOfCriticalRegions, mapOfCars, carsStopper);
            car[no].start();
        } 
    }
    
    private void initializeCriticalRegions() {

        Pos[] criticalRegionArea = new Pos[]
        {
            new Pos(1, 0), 
            new Pos(2, 0), 
            new Pos(3, 0), 
            new Pos(4, 0), 
            new Pos(5, 0),
            new Pos(6, 0), 
            new Pos(7, 0), 
            new Pos(8, 0), 
            new Pos(9, 0),
            new Pos(1, 1), 
            new Pos(1, 2)
        };

        //in this case there is only a single critical region.
        //for each tile the critical region is part of, give a reference to the
        //critical region.
        //Tiles that aren't part of a critical region, should be null.
        Alley alley = new Alley();
        for (int i = 0; i < criticalRegionArea.length; i++) {
			mapOfCriticalRegions[criticalRegionArea[i].row][criticalRegionArea[i].col] = alley;
		}
        
        //should be refactored, to it's own method
	    for (int i = 0; i < mapOfCars.length; i++) {
	    	for (int j = 0; j < mapOfCars[i].length; j++) {
				mapOfCars[i][j] = new Semaphore(1);
			}
	    }
    }
       
    //used by tests to stop all cars by having them wait
    //on a semaphore
    public void pause()
    {
        try {
            for(int i = 0; i < NUMBER_OF_CARS; i++) {
                carsStopper.P();
            }   
        } catch (Exception e) {
            cd.println("Error occured when trying to pause all cars");
        }
    }

    //used by tests to resume all cars
    public void resume()
    {
        try {
            for(int i = 0; i < NUMBER_OF_CARS; i++) {
                carsStopper.V();
            }   
        } catch (Exception e) {
            cd.println("Error occured when trying to resume all cars");
        }
    }

    public void startCar(int no) {
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






