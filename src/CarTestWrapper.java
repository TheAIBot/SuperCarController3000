import java.awt.EventQueue;

/**
 * For the methods of the CarTestI interface this class wraps them to 
 * similar events to be processed by the gui thread.
 */
class CarTestWrapper implements CarTestingI {

    Cars cars;
    
    private Semaphore doneSem;
    
    public CarTestWrapper(Cars cars) {
        this.cars = cars;
    }
    
    public void startCar(final int no) {
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.startCar(no); }}
        );
    }

    public void stopCar(final int no) {
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.stopCar(no); }}
        );
    }

    public void startAll() {
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.startAll(); }}
        );
    }

    public void stopAll() {
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.stopAll(); }}
        );
    }


    public void barrierOn() {
    	if (doneSem != null) {
    		cars.println("WARNING: Shut down active when barrierOn() called");
    		return;
    	}
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.barrierOn(); }}
        );
    }

    public void barrierOff() {
    	if (doneSem != null) {
    		cars.println("WARNING: Shut down active when barrierOff() called");
    		return;
    	}
         EventQueue.invokeLater(new Runnable() {
            public void run() { cars.barrierOff(); }}
        );
    }


    // Start barrier shut down
    public void startBarrierShutDown() {
    	if (doneSem != null) {
    		cars.println("WARNING: Shut down already active when startBarrierShutDown() called");
    		return;
    	}
        final Semaphore done = new Semaphore(0);
        doneSem = done;
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.barrierShutDown(done); }}
        );
    }  

    public void awaitBarrierShutDown() {
        try {
             if (doneSem != null) {
             	doneSem.P();
             	doneSem = null;
             } else 
             	cars.println("WARNING: no active shut down when awaitBarrierShutDown() called");
         } catch (InterruptedException e) {}
    }
    
/*
    // Start setting of threshold (asynchronously) 
    public void startBarrierSet(final int k) {
    	if (setDoneSem != null) {
    		cars.println("WARNING: setting alread active when startBarrierSet(k) called");
    		return;
    	}
    	
        final Semaphore done = new Semaphore(0);
        setDoneSem = done;
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.barrierSet(k, done); }}
        );
    }
    
    public void awaitBarrierSet() {
       try {
            if (setDoneSem != null) {
            	setDoneSem.P();
            	setDoneSem = null;
            } else 
            	cars.println("WARNING: no active setting when awaitBarrierSet() called");
        } catch (InterruptedException e) {}

    }
*/
    
    public void setLimit(final int k) {
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.setLimit(k); }}
        );
    }
    
     public void setSlow(final boolean slowdown) {
         EventQueue.invokeLater(new Runnable() {
             public void run() { cars.setSlow(slowdown); }}
         );
     }
 
     public void removeCar(final int no) {
         EventQueue.invokeLater(new Runnable() {
             public void run() { cars.removeCar(no); }}
         );
      }

     public void restoreCar(final int no) {
         EventQueue.invokeLater(new Runnable() {
             public void run() { cars.restoreCar(no); }}
         );
     }
     
    public void setSpeed(final int no, final int speed) {
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.setSpeed(no, speed); }}
        );
    }

    public void setVariation(final int no, final int var) {
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.setVariation(no, var); }}
        );
    }

/*
    // This should wait until limit change carried out
    // For this, a one-time semaphore is used (as simple Future)
    public void setLimit(final int k) {
        final Semaphore done = new Semaphore(0);
        EventQueue.invokeLater(new Runnable() {
            public void run() { cars.setLimit(k, done); }}
        );
        try {
            done.P();
        } catch (InterruptedException e) {}

    }
*/    
    
    // Println already wrapped in Cars
    public void println(final String message) {
        cars.println(message);
    }

 }