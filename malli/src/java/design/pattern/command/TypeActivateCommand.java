
package design.pattern.command;

public class TypeActivateCommand implements Command{
    Schedule Schedule;
    
    public TypeActivateCommand(Schedule Schedule)
    {
        this.Schedule = Schedule;
    }
    
    
    @Override
    public void execute()
    {
        Schedule.Activate();
    }
    
}
