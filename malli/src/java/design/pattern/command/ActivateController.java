
package design.pattern.command;


public class ActivateController {
    Command[] activateCommand;
    Command[] deactivateCommand;
    
    public ActivateController()
    {
        activateCommand = new Command[8];
        deactivateCommand = new Command[8];
      try{  
        for(int i=0 ; i<8 ; i++)
        {
            activateCommand[i] = null;
            deactivateCommand[i] = null;
        }
      } 
      catch(Exception e)
      {
          System.out.println(e.getMessage());
      }
      finally{
          System.out.println("Executeted Successfully");                  
      }
    }
    
    /**
     *
     * @param click
     * @param activateCommand
     * @param deactivateCommand
     */
    
    public void setCommand(int click, Command activateCommand, Command deactivateCommand)
    {   
        this.activateCommand[click] = activateCommand;
        this.deactivateCommand[click] = deactivateCommand;
    }
    
    public void activeButtonWasPushed(int click){
		activateCommand[click].execute();
	}
	
	public void deactiveButtonWasPushed(int click){
		deactivateCommand[click].execute();
	}
    
}
