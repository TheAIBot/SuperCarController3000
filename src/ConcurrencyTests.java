import java.util.ArrayList;
import java.util.Random;

import org.junit.*;

class ConcurrencyTests {

    private static final long TEST_RUNTIME = 3_000_000_000l;

    private static final ArrayList<Pos> criticalRegionArea = new ArrayList<Pos>();
    static {
        criticalRegionArea.add(new Pos(0, 1));
        criticalRegionArea.add(new Pos(0, 2));
        criticalRegionArea.add(new Pos(0, 3));
        criticalRegionArea.add(new Pos(0, 4));
        criticalRegionArea.add(new Pos(0, 5));
        criticalRegionArea.add(new Pos(0, 6));
        criticalRegionArea.add(new Pos(0, 7));
        criticalRegionArea.add(new Pos(0, 8));
        criticalRegionArea.add(new Pos(0, 9));
        criticalRegionArea.add(new Pos(1, 1));
        criticalRegionArea.add(new Pos(2, 1));
    }

    public static void main(String[] args) {
        checkForConcurrencyErrors();
    }

    @Test

    public static void checkForConcurrencyErrors() {
        checkForConcurrencyErrors(new Cars());
    }


    public static void checkForConcurrencyErrors(final Cars carControl) {
        try {
            final Random rand = new Random();
            carControl.setVisible(true);
            final Car[] cars = ((CarControl)carControl.ctr).car;
    
            final int[] carUnexpectedWaitingForAlley = new int[CarControl.NUMBER_OF_CARS];
            final Pos[] oldCarPositions = new Pos[CarControl.NUMBER_OF_CARS];
            for(int i = 1; i < cars.length; i++) {
                oldCarPositions[i] = cars[i].curpos;
                cars[i].setSpeed(10);
            }
    
    
            carControl.startAll();
            while (true) {
                final long startTime = System.nanoTime();
                //first mess around with the cars for a while
                while (System.nanoTime() - startTime < TEST_RUNTIME) {
                    Thread.sleep(rand.nextInt(20));
                    removeOrRestoreCar(rand, carControl, cars, carUnexpectedWaitingForAlley);
                }
                //then verify that they still work as expected
                while (System.nanoTime() - startTime < TEST_RUNTIME * 2) {   
                    Thread.sleep(100);
                    
                    if (areCarsDeadlocked(carControl, cars, oldCarPositions, carUnexpectedWaitingForAlley)) {
                        carControl.println("Deadlock detected");
                        //Assert.fail("Deadlock detected");
                    }
    
                    //update cars old positions
                    for(int i = 0; i < cars.length; i++) {
                        oldCarPositions[i] = cars[i].curpos;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("crashed");
        }
    }

    private static void removeOrRestoreCar(final Random rand, final Cars carControl, final Car[] cars, final int[] carUnexpectedWaitingForAlley)
    {
        //from 1 to 8
        final int carToMessWith = rand.nextInt(CarControl.NUMBER_OF_CARS - 1) + 1;
        if (rand.nextBoolean()) {
            carControl.removeCar(carToMessWith);
            //carControl.println("removed car");
        }
        else {
            carControl.restoreCar(carToMessWith);
            if (carToMessWith != 0) {
                cars[carToMessWith].setSpeed(10);
            }
            carUnexpectedWaitingForAlley[carToMessWith] = 0;
            //carControl.println("added car");
        }
    }

    private static boolean areCarsDeadlocked(final Cars carControl, final Car[] cars, final Pos[] oldCarPositions, final int[] carUnexpectedWaitingForAlley)
    {
        boolean carsInAlley = anyCarsInAlley(cars);
        boolean deadlockDetected = true;
        for(int i = 1; i < cars.length; i++) {
            final Pos carOldPos = oldCarPositions[i];
            final Pos carNewPos = cars[i].curpos;

            final boolean isCarRunning = ((CarControl)carControl.ctr).getIsCarRunning(i);
            if (isCarRunning && carOldPos != null) {
                if (!carOldPos.equals(carNewPos)) {
                    deadlockDetected = false;
                    carUnexpectedWaitingForAlley[i] = 0;
                }
                else if (!carsInAlley) {
                    carUnexpectedWaitingForAlley[i]++;
                    //carControl.println(i + " " + carUnexpectedWaitingForAlley[i]);
                    if (carUnexpectedWaitingForAlley[i] >= 2) {
                        return true;
                    }
                }
            }
        }

        return deadlockDetected;
    }

    private static boolean anyCarsInAlley(final Car[] cars) {
        for(int i = 1; i < cars.length; i++) {
            final Pos carNewPos = cars[i].curpos;

            if (criticalRegionArea.stream().anyMatch(x -> x.equals(carNewPos))) {
                return true;
            }
        }

        return false;
    }
}