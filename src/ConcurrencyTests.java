import java.util.ArrayList;
import java.util.Random;

class ConcurrencyTests {

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

    public static void main(String[] args) {
        checkForConcurrencyErrors();
    }

    public static void checkForConcurrencyErrors() {
        checkForConcurrencyErrors(new Cars());
    }

    public static void checkForConcurrencyErrors(final Cars playground) {
        try {
            playground.setVisible(true);

            final Random rand = new Random();
            final CarControl carControl = ((CarControl)playground.ctr);
            final Car[] cars = carControl.car;
            final Semaphore stopMessingAround = new Semaphore(1);
            final Pos[] oldCarPositions = new Pos[CarControl.NUMBER_OF_CARS];
            for(int i = 1; i < cars.length; i++) {
                oldCarPositions[i] = cars[i].curpos;
                cars[i].setSpeed(10);
            }
    
    
            playground.startAll();
            playground.startCar(0);
            new Thread(() ->
            {
                try {
                while (true) {   
                    Thread.sleep(100);
                    
                    stopMessingAround.P();
                    carControl.pause();

                    if (areCarsDeadlocked(playground, carControl, cars, oldCarPositions)) {
                        playground.println("Deadlock detected");
                    }

                    if (anyCarsStuckInTheAlley(playground, carControl, cars)) {
                        playground.println("Alley problem detected");
                    }
    
                    //update cars old positions
                    for(int i = 0; i < cars.length; i++) {
                        oldCarPositions[i] = cars[i].curpos;
                    }

                    stopMessingAround.V();
                    carControl.resume();
                }
                } catch (Exception e) {
                    playground.println(e.getMessage());
                }
            }).start();
            while (true) {
                final long startTime = System.nanoTime();
                while (System.nanoTime() - startTime < 3_000_000_000l) {
                    Thread.sleep(150);

                    stopMessingAround.P();
                    messWithCar(rand, playground, cars);
                    stopMessingAround.V();   
                }
                Thread.sleep(3000);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("crashed");
        }
    }

    private static void messWithCar(final Random rand, final Cars playground, final Car[] cars)
    {
        final int carToMessWith = rand.nextInt(CarControl.NUMBER_OF_CARS);
        if (rand.nextBoolean()) {
            playground.removeCar(carToMessWith);
        }
        else {
            playground.restoreCar(carToMessWith);
            //a new car was created, so set the speed of the car
            if (carToMessWith != 0) {
                cars[carToMessWith].setSpeed(10);
            }
        }
    }

    private static boolean areCarsDeadlocked(final Cars playground, final CarControl carControl, final Car[] cars, final Pos[] oldCarPositions)
    {
        boolean deadlockDetected = true;
        for(int i = 1; i < cars.length; i++) {
            final Pos carOldPos = oldCarPositions[i];
            final Pos carNewPos = cars[i].curpos;

            if (!carControl.getIsCarRunning(i) || carNewPos != null && !carNewPos.equals(carOldPos)) {
                deadlockDetected = false;
            }
        }
        return deadlockDetected;
    }

    private static boolean anyCarsStuckInTheAlley(final Cars playground, final CarControl carControl, final Car[] cars) {
        final boolean[] isCarInAlley = getIsCarsInAlley(carControl, cars);
        final boolean carsFromTop    = isCarInAlley[1] || isCarInAlley[2] || isCarInAlley[3] || isCarInAlley[4];
        final boolean carsFromBottom = isCarInAlley[5] || isCarInAlley[6] || isCarInAlley[7] || isCarInAlley[8];

        return carsFromTop && carsFromBottom;
    }

    private static boolean[] getIsCarsInAlley(final CarControl carControl, final Car[] cars)
    {
        final boolean[] isCarInAlley = new boolean[cars.length];
        for(int i = 1; i < isCarInAlley.length; i++)
        {
            final Pos curpos = cars[i].curpos;
            isCarInAlley[i] = carControl.getIsCarRunning(i) && criticalRegionArea.stream().anyMatch(x -> x.equals(curpos));
        }

        return isCarInAlley;
    }
}