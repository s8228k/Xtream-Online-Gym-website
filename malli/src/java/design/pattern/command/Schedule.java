package design.pattern.command;
public class Schedule {
    
    private final String type;

    public Schedule(String type) {
        //type = activites, sports, plans
        this.type = type;
    }
    
    public void Activate()
    {
        System.out.println("Link Activated");
    }

    public void deActivate()
    {
        System.out.println("Link Deactivated");
    }
    
    
}
