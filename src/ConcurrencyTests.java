import java.util.ArrayList;
import java.util.Random;

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
                boolean isBarrierShuttingdown = false;
                //first mess around with the cars for a while
                while (System.nanoTime() - startTime < TEST_RUNTIME) {
                    Thread.sleep(rand.nextInt(70));
                    isBarrierShuttingdown = messWithBarrier(rand, carControl, cars, isBarrierShuttingdown);
                }

                for(int i = 0; i < cars.length; i++) {
                    carUnexpectedWaitingForAlley[i] = 0;
                }

                boolean oldDeadlock = false;
                //then verify that they still work as expected
                while (System.nanoTime() - startTime < TEST_RUNTIME * 2) {   
                    Thread.sleep(100);
                    

                    final boolean deadlock = areCarsDeadlocked(carControl, cars, oldCarPositions, carUnexpectedWaitingForAlley);
                    if (deadlock && oldDeadlock) {
                        carControl.println("Deadlock detected");
                        for(int i = 1; i < cars.length; i++) {
                            cars[i].setSpeed(400);
                        }
                        Thread.sleep(5000);
                        for(int i = 1; i < cars.length; i++) {
                            cars[i].setSpeed(10);
                        }
                        //Assert.fail("Deadlock detected");
                    }
                    oldDeadlock = deadlock;
    
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

    private static boolean messWithBarrier(final Random rand, final Cars carControl, final Car[] cars, boolean isBarrierShuttingdown)
    {
        final int messWith = rand.nextInt(3);
        if (messWith == 0) {
            carControl.barrierOn();
        }
        else if (messWith == 1) {
            carControl.barrierOff();
        }
        else if (!isBarrierShuttingdown) {
            isBarrierShuttingdown = true;
            carControl.barrierShutDown(null);
        }

        return isBarrierShuttingdown;
    }

    static int uu = 0;

    private static boolean areCarsDeadlocked(final Cars carControl, final Car[] cars, final Pos[] oldCarPositions, final int[] carUnexpectedWaitingForAlley)
    {
        boolean deadlockDetected = true;
        for(int i = 1; i < cars.length; i++) {
            final Pos carOldPos = oldCarPositions[i];
            final Pos carNewPos = cars[i].curpos;

            if (!carNewPos.equals(carOldPos)) {
                deadlockDetected = false;
                carUnexpectedWaitingForAlley[i] = 0;
            }
        }

        return deadlockDetected;
    }
}