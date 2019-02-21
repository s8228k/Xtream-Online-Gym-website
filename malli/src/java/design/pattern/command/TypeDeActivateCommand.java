
package design.pattern.command;

public class TypeDeActivateCommand implements Command{
    Schedule Schedule;
        
    public TypeDeActivateCommand(Schedule Schedule)
    {
        this.Schedule = Schedule;
    }
    
    
    @Override
    public void execute()
    {
        Schedule.deActivate();
    }
}
