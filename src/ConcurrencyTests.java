import java.util.Random;

import org.junit.*;

class ConcurrencyTests {

    @Test
    public void doTheStuff() throws InterruptedException {
        Random rand = new Random();
        Cars carControl = new Cars();
        carControl.setVisible(true);

        carControl.startAll();

        long startTime = System.nanoTime();
        while (startTime < 1_000_000_000) {
            Thread.sleep(rand.nextInt(10));
            if (rand.nextBoolean()) {
                carControl.removeCar(rand.nextInt(CarControl.NUMBER_OF_CARS));
            }
            else {
                carControl.restoreCar(rand.nextInt(CarControl.NUMBER_OF_CARS));
            }

        }
    }
}