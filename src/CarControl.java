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
    
    CriticalRegion currentCriticalRegion;
    CriticalRegion[][] mapCriticalRegions;
    Semaphore[][] mapOfCars;
    Barrier barrier;

    int num;                          // Car number
    Pos startpos;                    // Startpositon (provided by GUI)
    Pos barpos;                      // Barrierpositon (provided by GUI)
    Color col;                       // Car  color
    Gate mygate;                     // Gate at startposition


    int speed;                       // Current car speed
    Pos curpos;                      // Current position
    Pos newpos;

    public Car(int no, CarDisplayI cd, Gate g, CriticalRegion[][] mapCriticalRegions, Semaphore[][] mapOfCars, Barrier barrier) {

        this.num = no;
        this.cd = cd;
        mygate = g;
        startpos = cd.getStartPos(no);
        barpos = cd.getBarrierPos(no);  // For later use
        
        this.mapCriticalRegions = mapCriticalRegions;
        this.mapOfCars = mapOfCars;
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
        return (int) Math.round(factor*basespeed) / 20;
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
            //Spørgsmål: Er man garanteret, at bilerne altid kører med den angivne hastighed, konstant, hele vejen rundt?
            //Min umiddelbare tanke er nej, da de kører på forskellige tråde.
            
            //Cannot start in a critical region, so that is not neccessary to check here.
            speed = chooseSpeed();
            curpos = startpos;
            cd.mark(curpos,col,num);

            while (true) { 
                try {
                    sleep(speed());
                } catch (InterruptedException e) {
                    cd.clear(curpos);
                    mapOfCars[curpos.row][curpos.col].V();
                    break;
                }

                if (atGate(curpos)) { 
                    try {
                        mygate.pass();
                    } catch (InterruptedException e) {
                        cd.clear(curpos);
                        mapOfCars[curpos.row][curpos.col].V();
                        break;
                    }
                    speed = chooseSpeed();
                }
                
                //If the car is at the barrier
                if (barpos.equals(curpos)) {
                	barrier.sync();
				}

                newpos = nextPos(curpos);
                
                final CriticalRegion nextCriticalRegion = mapCriticalRegions[newpos.row][newpos.col];
                
                //TODO is this the correct placement of the code?
                //Entering another critical region:
                //TODO ville det være bedre at bruge noget kode ligesom med gatesne? I forhold til semaforene
                if (nextCriticalRegion != null && !nextCriticalRegion.equals(currentCriticalRegion)) {
                    //System.out.println("Enter car no " + no);
                    try {
                        nextCriticalRegion.enter(num);
                    } catch (InterruptedException e) {
                        cd.clear(curpos);
                        mapOfCars[curpos.row][curpos.col].V();
                        break;
                    }
                }
                
                try {
                    mapOfCars[newpos.row][newpos.col].P();
                } catch (InterruptedException e) {
                    cd.clear(curpos);
                    mapOfCars[curpos.row][curpos.col].V();
                    break;
                }                	
                
                //  Move to new position 
                cd.clear(curpos);
                cd.mark(curpos,newpos,col,num);
                try {
                    sleep(speed());
                } catch (InterruptedException e) {
                    cd.clear(curpos,newpos);
                    mapOfCars[newpos.row][newpos.col].V();
                    mapOfCars[curpos.row][curpos.col].V();
                    break;
                }
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
            }

            if (currentCriticalRegion != null) {
                currentCriticalRegion.leave(num);
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
    CriticalRegion[][] mapOfCriticalRegions = new CriticalRegion[11][12];
    Semaphore[][] mapOfCars = new Semaphore[11][12];
    boolean[] isCarRunning = new boolean[NUMBER_OF_CARS];
    Semaphore changeACar = new Semaphore(1);
    Barrier barrier = new Barrier();

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
                car[no]  = new Car(no,cd,gate[no], mapOfCriticalRegions, mapOfCars, barrier);
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
            new Pos(0, 1), 
            new Pos(0, 2), 
            new Pos(0, 3), 
            new Pos(0, 4), 
            new Pos(0, 5),
            new Pos(0, 6), 
            new Pos(0, 7), 
            new Pos(0, 8), 
            new Pos(0, 9), 
            //new Pos(0,10),
            new Pos(1, 1), 
            new Pos(2, 1)
        };

        for (int i = 0; i < criticalRegionArea.length; i++) {
			mapOfCriticalRegions[criticalRegionArea[i].col][criticalRegionArea[i].row] = alley;
		}
	    
	    for (int i = 0; i < mapOfCars.length; i++) {
	    	for (int j = 0; j < mapOfCars[i].length; j++) {
				mapOfCars[i][j] = new Semaphore(1);
			}
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
                car[no]  = new Car(no,cd,gate[no], mapOfCriticalRegions, mapOfCars, barrier);
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






