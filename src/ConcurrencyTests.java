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
    
            final Pos[] oldCarPositions = new Pos[CarControl.NUMBER_OF_CARS];
            for(int i = 1; i < cars.length; i++) {
                oldCarPositions[i] = cars[i].curpos;
                cars[i].setSpeed(100);
            }
    
    
            carControl.startAll();
            carControl.startCar(0);
            new Thread(() ->
            {
                try {
                while (true) {   
                    Thread.sleep(100);
                    
                    if (areCarsDeadlocked(carControl, cars, oldCarPositions)) {
                        carControl.println("Deadlock detected");
                    }
    
                    //update cars old positions
                    for(int i = 0; i < cars.length; i++) {
                        oldCarPositions[i] = cars[i].curpos;
                    }
                }
                } catch (Exception e) {
                    carControl.println(e.getMessage());
                    //TODO: handle exception
                }
            }).start();
            while (true) {
                final long startTime = System.nanoTime();
                
                //first mess around with the cars for a while
                while (System.nanoTime() - startTime < TEST_RUNTIME) {
                    Thread.sleep(rand.nextInt(70));
                    messWithBarrier(rand, carControl, cars);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("crashed");
        }
    }

    private static void messWithBarrier(final Random rand, final Cars carControl, final Car[] cars)
    {
        final int messWith = rand.nextInt(300);
        if (messWith < 140) {
            carControl.barrierOn();
        }
        else if (messWith < 270) {
            carControl.barrierOff();
        }
        else {
            Semaphore e = new Semaphore(0);
            carControl.barrierShutDown(e);
            try {
                e.P();
            } catch (InterruptedException err) {
                //TODO: handle exception
            }
        }
    }

    static int uu = 0;

    private static boolean areCarsDeadlocked(final Cars carControl, final Car[] cars, final Pos[] oldCarPositions)
    {
        boolean deadlockDetected = true;
        for(int i = 1; i < cars.length; i++) {
            final Pos carOldPos = oldCarPositions[i];
            final Pos carNewPos = cars[i].curpos;

            if (!carNewPos.equals(carOldPos)) {
                deadlockDetected = false;
            }
        }

        return deadlockDetected;
    }
}