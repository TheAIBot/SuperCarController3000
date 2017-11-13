import java.util.Random;

import org.junit.*;

class ConcurrencyTests {

    private static final long TEST_RUNTIME = 3_000_000_000l;
    private static final long MAX_CAR_STUCK_TIME = 1_000_000_000l;

    public static void main(String[] args) {
        try {
            doTheStuff();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("crashed");
        }

    }

    @Test
    public static void doTheStuff() throws InterruptedException {
        final Random rand = new Random();
        final Cars carControl = new Cars();
        carControl.setVisible(true);
        final Car[] cars = ((CarControl)carControl.ctr).car;

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
                removeOrRestoreCar(rand, carControl, cars);
            }
            //then verify that they still work as expected
            while (System.nanoTime() - startTime < TEST_RUNTIME * 2) {   
                Thread.sleep(100);
                
                if (areCarsDeadlocked(carControl, cars, oldCarPositions)) {
                    carControl.println("Deadlock detected");
                    //Assert.fail("Deadlock detected");
                }

                //update cars old positions
                for(int i = 0; i < cars.length; i++) {
                    oldCarPositions[i] = cars[i].curpos;
                }
            }
        }
    }

    private static void removeOrRestoreCar(final Random rand, final Cars carControl, final Car[] cars)
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
            //carControl.println("added car");
        }
    }

    private static boolean areCarsDeadlocked(final Cars carControl, final Car[] cars, final Pos[] oldCarPositions)
    {
        boolean deadlockDetected = true;
        for(int i = 1; i < cars.length; i++) {
            final Pos carOldPos = oldCarPositions[i];
            final Pos carNewPos = cars[i].curpos;

            final boolean isCarRunning = ((CarControl)carControl.ctr).getIsCarRunning(i);
            if (isCarRunning && carOldPos != null && !carOldPos.equals(carNewPos)) {
                deadlockDetected = false;
            }
        }

        return deadlockDetected;
    }
}