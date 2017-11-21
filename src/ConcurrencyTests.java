import java.util.ArrayList;
import java.util.Arrays;
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
    
            boolean[] isGateOpen = new boolean[CarControl.NUMBER_OF_CARS];
            final Pos[] oldCarPositions = new Pos[CarControl.NUMBER_OF_CARS];
            for(int i = 1; i < cars.length; i++) {
                oldCarPositions[i] = cars[i].curpos;
                cars[i].setSpeed(10);
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
                    Thread.sleep(rand.nextInt(150));
                    messWithBarrier(rand, carControl, isGateOpen);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("crashed");
        }
    }

    private static void messWithBarrier(final Random rand, final Cars carControl, final boolean[] isGateOpen)
    {
        final int carToMessWith = rand.nextInt(CarControl.NUMBER_OF_CARS);
        if (isGateOpen[carToMessWith]) {
            carControl.stopCar(carToMessWith);
            isGateOpen[carToMessWith] = false;
        }
        else {
            carControl.startCar(carToMessWith);
            isGateOpen[carToMessWith] = true;
        }
    }

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

        final boolean[] isCarInAlley = getIsCarsInAlley(cars);
        final boolean carsFromTop    = isCarInAlley[1] || isCarInAlley[2] || isCarInAlley[3] || isCarInAlley[4];
        final boolean carsFromBottom = isCarInAlley[5] || isCarInAlley[6] || isCarInAlley[7] || isCarInAlley[8];
        if (carsFromTop && carsFromBottom) {
            //carControl.println("asadsasad");
            String fisk = "";
            for(int i = 0; i < 9; i++) {
                if (isCarInAlley[i]) {
                    fisk += "1 ";
                }
                else {
                    fisk += "0 ";
                }
            }
            carControl.println(fisk);
            System.out.println("asdadasdadasdadasdasd");
            return true;
        }

        return deadlockDetected;
    }

    private static boolean[] getIsCarsInAlley(final Car[] cars)
    {
        boolean[] isCarInAlley = new boolean[cars.length];
        System.out.println(" Car pos: ");
        String positions = "";
        String sdf = "";
        for(int i = 1; i < isCarInAlley.length; i++)
        {
            for (Pos pos : criticalRegionArea) {
                Pos curpos = cars[i].curpos;
                if (pos.equals(curpos)) {
                    positions += pos.toString();
                    sdf += curpos.toString();
                    isCarInAlley[i] = true;
                    break;
                }
            }
        }
        System.out.println(positions);
        System.out.println(sdf);

        return isCarInAlley;
    }
}