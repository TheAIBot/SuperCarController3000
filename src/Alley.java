
public class Alley {
	

		Semaphore carsRunning 	= new Semaphore(1);
		Semaphore goingDown		= new Semaphore(0);
		Semaphore goingUp		= new Semaphore(0);

	    public void enter(int no) {
	    	
	    	
	 	    throw new Error("Make");
	    }	

	    public void leave(int no) {
		    throw new Error("Make");
		    
	    }

		public boolean isLeavingAlley(int no, Pos newpos) {
			switch (no) {
			case 1:
			case 2:				
				break;

			default:
				break;
			}
			return false;
		}

		public boolean isEnteringAlley(int no, Pos newpos) {
			// TODO Auto-generated method stub
			return false;
		}
	
	   
	   
}
