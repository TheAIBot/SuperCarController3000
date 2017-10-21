import java.util.ArrayList;

public class CriticalRegion
{
    private final Semaphore lock = new Semaphore(1);
    private final int maxCars;
    private final ArrayList<Pos> aEnterPoints;
    private final ArrayList<Pos> bEnterPoints;
    private int carsInRegion = 0;
    private EntranceDirection entranceDirection = EntranceDirection.A;


    public CriticalRegion(int allowedEntries, ArrayList<Pos> a, ArrayList<Pos> b)
    {
        maxCars = allowedEntries;
        aEnterPoints = a;
        bEnterPoints = b;
    }

    public boolean enter(Pos currentPos) throws InterruptedException
    {
        System.out.println("" + carsInRegion);
        if(aEnterPoints.contains(currentPos))
        {
            return enterFromPointA();
        }
        else if(bEnterPoints.contains(currentPos))
        {
            return enterFromPointB();
        }
        else
        {
            throw new Error("Car entered from an unexpected position: " + currentPos.toString());
        }
    }

    private boolean enterFromPointA() throws InterruptedException
    {
        return enter(EntranceDirection.A);
    }

    private boolean enterFromPointB() throws InterruptedException
    {
        return enter(EntranceDirection.B);
    }

    private boolean enter(EntranceDirection direction) throws InterruptedException
    {
        if(carsInRegion == 0 || 
           (entranceDirection == direction && carsInRegion < maxCars))
        {
            lock.P();
            if(carsInRegion == 0 || 
               (entranceDirection == direction && carsInRegion < maxCars))
            {
                carsInRegion++;
                entranceDirection = direction;
                lock.V();
                return true;
            }

            lock.V();
        }

        return false;
    }

    public void exit() throws InterruptedException
    {
        lock.P();
        
        carsInRegion--;

        lock.V();  
        System.out.println("" + carsInRegion);
    }


    enum EntranceDirection
    {
        A,
        B
    }
}