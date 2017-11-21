//Prototype implementation of Car Control
//Mandatory assignment
//Course 02158 Concurrent Programming, DTU, Fall 2017


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
    
    final CriticalRegion[][] mapCriticalRegions;
    final Semaphore[][] mapOfCars;
    final Semaphore carStopper;
    final Barrier barrier;

    int num;                          // Car number
    Pos startpos;                    // Startpositon (provided by GUI)
    Pos barpos;                      // Barrierpositon (provided by GUI)
    Color col;                       // Car  color
    Gate mygate;                     // Gate at startposition


    int speed;                       // Current car speed
    Pos curpos;                      // Current position

    public Car(int no, CarDisplayI cd, Gate g, CriticalRegion[][] mapCriticalRegions, Semaphore[][] mapOfCars, Semaphore carStopper,  Barrier barrier) {

        this.num = no;
        this.cd = cd;
        mygate = g;
        startpos = cd.getStartPos(no);
        barpos = cd.getBarrierPos(no);  // For later use
        
        this.mapCriticalRegions = mapCriticalRegions;
        this.mapOfCars = mapOfCars;
        this.carStopper = carStopper;
        this.barrier = barrier;
       
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
            speed = chooseSpeed();
            curpos = startpos;
            cd.mark(curpos,col,num);
            CriticalRegion currentCriticalRegion = null;

            while (true) { 
                sleep(speed());

                if (atGate(curpos)) { 
                    mygate.pass();
                    speed = chooseSpeed();
                }
                
                //If the car is at the barrier
                if (barpos.equals(curpos)) {
                	barrier.sync();
				}

                final Pos newpos = nextPos(curpos);
                final CriticalRegion nextCriticalRegion = mapCriticalRegions[newpos.row][newpos.col];
                if (nextCriticalRegion != null && !nextCriticalRegion.equals(currentCriticalRegion)) {
                    nextCriticalRegion.enter(num);
                }
                
                mapOfCars[newpos.row][newpos.col].P();               	
                
                //  Move to new position 
                cd.clear(curpos);
                cd.mark(curpos,newpos,col,num);
                sleep(speed());
                cd.clear(curpos,newpos);
                cd.mark(newpos,col,num);                     

                mapOfCars[curpos.row][curpos.col].V();
                
                curpos = newpos;           
                //Must not leave, before having got permission to enter.
                //Leaving current critical region:
                
                if (currentCriticalRegion != null && !currentCriticalRegion.equals(nextCriticalRegion)) {
                    currentCriticalRegion.leave(num);
                }
                currentCriticalRegion = nextCriticalRegion;

                carStopper.P();
                carStopper.V();  
            }
        }
        catch (Exception e) {
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
    final CriticalRegion[][] mapOfCriticalRegions = new CriticalRegion[11][12];
    final Semaphore[][] mapOfCars = new Semaphore[11][12];
    final Semaphore carsStopper = new Semaphore(NUMBER_OF_CARS);
    final boolean[] isCarRunning = new boolean[NUMBER_OF_CARS];
    final Semaphore changeACar = new Semaphore(1);
    final Barrier barrier = new Barrier();

    public CarControl(CarDisplayI cd) {
        this.cd = cd;
        car  = new  Car[NUMBER_OF_CARS];
        gate = new Gate[NUMBER_OF_CARS];
        initializeCriticalRegions();

        try {
            //just to be safe, block here aswell.
            //you might be able to call other methods while the constructor is running
            changeACar.P();
            for (int no = 0; no < NUMBER_OF_CARS; no++) {
                gate[no] = new Gate(no);
                car[no]  = new Car(no,cd,gate[no], mapOfCriticalRegions, mapOfCars, carsStopper, barrier);
                car[no].start();
                isCarRunning[no] = true;
            } 
            changeACar.V();   
        } catch (InterruptedException e) {
        }
    }
    
    private void initializeCriticalRegions() {

        CriticalRegion alley = new CriticalRegion();
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

        for (int i = 0; i < criticalRegionArea.length; i++) {
			mapOfCriticalRegions[criticalRegionArea[i].row][criticalRegionArea[i].col] = alley;
		}
	    
	    for (int i = 0; i < mapOfCars.length; i++) {
	    	for (int j = 0; j < mapOfCars[i].length; j++) {
				mapOfCars[i][j] = new Semaphore(1);
			}
	    }  
    }
       
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
        barrier.on();
    }

    public void barrierOff() {
        barrier.off();
    }

    public void barrierShutDown() { 
        try {
            barrier.shutdown();   
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setLimit(int k) { 
        cd.println("Setting of bridge limit not implemented in this version");
    }

    public void removeCar(int no) { 
        try {
            changeACar.P();

            if(isCarRunning[no]) {
                car[no].interrupt();
                isCarRunning[no] = false;
            }

            changeACar.V();
        } catch (InterruptedException e) {
        }
    }

    public void restoreCar(int no) { 
        try {
            changeACar.P();

            if(!isCarRunning[no]) {
                car[no]  = new Car(no,cd,gate[no], mapOfCriticalRegions, mapOfCars, carsStopper, barrier);
                car[no].start();
                isCarRunning[no] = true;
            }

            changeACar.V();
        } catch (InterruptedException e) {
        }
    }

    /* Speed settings for testing purposes */

    public void setSpeed(int no, int speed) { 
        car[no].setSpeed(speed);
    }

    public void setVariation(int no, int var) { 
        car[no].setVariation(var);
    }
}






