import java.util.ArrayList;
import java.util.Random;

class ConcurrencyTests {

    //holds the area of the critical region
    private static final ArrayList<Pos> criticalRegionArea = new ArrayList<Pos>();
    static {
        criticalRegionArea.add(new Pos(1, 0));
        criticalRegionArea.add(new Pos(2, 0)); 
        criticalRegionArea.add(new Pos(3, 0)); 
        criticalRegionArea.add(new Pos(4, 0)); 
        criticalRegionArea.add(new Pos(5, 0));
        criticalRegionArea.add(new Pos(6, 0)); 
        criticalRegionArea.add(new Pos(7, 0)); 
        criticalRegionArea.add(new Pos(8, 0)); 
        criticalRegionArea.add(new Pos(9, 0));
        criticalRegionArea.add(new Pos(1, 1)); 
        criticalRegionArea.add(new Pos(1, 2));
    }

    //run test like a normal java program
    public static void main(String[] args) {
        checkForConcurrencyErrors();
    }

    public static void checkForConcurrencyErrors() {
        checkForConcurrencyErrors(new Cars());
    }

    public static void checkForConcurrencyErrors(final Cars playground) {
        try {
            //this is a semi automatic test, which means that the 
            //user also has to look and verify that the errors are error
            //so show the ui is probably a good idea
            playground.setVisible(true);

            final Random rand = new Random();
            final CarControl carControl = ((CarControl)playground.ctr);
            //needed to get information about the cars
            final Car[] cars = carControl.car;
            //it's not allowed to open/close the gate twice or more in a row.
            //this array makes sure that won't happen by keeping track on 
            //whether a gate is open or closed.
            final boolean[] isGateOpen = new boolean[CarControl.NUMBER_OF_CARS];
            //used to stop the thread that changes the playground randomly
            final Semaphore stopMessingAround = new Semaphore(1);
            //keeps track of the cars previous position
            final Pos[] oldCarPositions = new Pos[CarControl.NUMBER_OF_CARS];
            for(int i = 1; i < cars.length; i++) {
                oldCarPositions[i] = cars[i].curpos;
                //make the cars go super fast so any errors will be detected quicker
                cars[i].setSpeed(10);
            }
    
    
            playground.startAll();
            playground.startCar(0);
            //make a background thread that preiodicly checks whether
            //there is an error or not
            new Thread(() ->
            {
                try {
                while (true) {   
                    Thread.sleep(100);
                    
                    //prevent anything for chaing the state of the playground while
                    //the check is running
                    carControl.pause();
                    stopMessingAround.P();

                    if (areCarsDeadlocked(playground, cars, oldCarPositions)) {
                        playground.println("Deadlock detected");
                    }

                    if (anyCarsStuckInTheAlley(playground, cars)) {
                        playground.println("Alley problem detected");
                    }
    
                    for(int i = 0; i < cars.length; i++) {
                        oldCarPositions[i] = cars[i].curpos;
                    }

                    //resume playground operations
                    carControl.resume();
                    stopMessingAround.V();
                }
                } catch (Exception e) {
                    playground.println(e.getMessage());
                }
            }).start();
            //periodicly turn mess with the cars by randomly
            //turning on/off random gates.
            while (true) {
                Thread.sleep(rand.nextInt(150));

                stopMessingAround.P();
                messWithCars(rand, playground, isGateOpen);
                stopMessingAround.V();
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("crashed");
        }
    }

    private static void messWithCars(final Random rand, final Cars playground, final boolean[] isGateOpen)
    {
        final int carToMessWith = rand.nextInt(CarControl.NUMBER_OF_CARS);
        //aren't allowed to open a gate twice
        if (isGateOpen[carToMessWith]) {
            playground.stopCar(carToMessWith);
            isGateOpen[carToMessWith] = false;
        }
        else {
            playground.startCar(carToMessWith);
            isGateOpen[carToMessWith] = true;
        }
    }

    private static boolean areCarsDeadlocked(final Cars playground, final Car[] cars, final Pos[] oldCarPositions)
    {
        //if all cars has the same position as last time
        //then they are probably deadlocked.
        //it's possible that the cars can end up in the same
        //position as last time without deadlocking, but
        //the possibility of that happening is very low
        //and not worth checking for.
        //that's partially why it's a semi automatic test.
        for(int i = 1; i < cars.length; i++) {
            final Pos carOldPos = oldCarPositions[i];
            final Pos carNewPos = cars[i].curpos;

            if (!carNewPos.equals(carOldPos)) {
                return false;
            }
        }
        return true;
    }

    private static boolean anyCarsStuckInTheAlley(final Cars playground, final Car[] cars) {
        final boolean[] isCarInAlley = getIsCarsInAlley(cars);
        final boolean carsFromTop    = isCarInAlley[1] || isCarInAlley[2] || isCarInAlley[3] || isCarInAlley[4];
        final boolean carsFromBottom = isCarInAlley[5] || isCarInAlley[6] || isCarInAlley[7] || isCarInAlley[8];

        //cars from the top and bottom are not allowed to be in the alley at the same time
        //because it will most likely case a deadlock
        return carsFromTop && carsFromBottom;
    }

    private static boolean[] getIsCarsInAlley(final Car[] cars)
    {
        //go though every car and check if it's current position is inside the alley
        final boolean[] isCarInAlley = new boolean[cars.length];
        for(int i = 1; i < isCarInAlley.length; i++)
        {
            final Pos curpos = cars[i].curpos;
            isCarInAlley[i] = criticalRegionArea.stream().anyMatch(x -> x.equals(curpos));
        }

        return isCarInAlley;
    }
}