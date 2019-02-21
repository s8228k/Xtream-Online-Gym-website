
package design.pattern.command;

public class Client {
    public static void main(String[] args) {
    ActivateController ActivateController =  new ActivateController();
    
    Schedule Activities = new Schedule("Activities");
    Schedule Plan = new Schedule("Plan");
    Schedule Sports = new Schedule("Sports");
    
    TypeActivateCommand activateActivities = new TypeActivateCommand(Activities);
    TypeDeActivateCommand deactivateActivities = new TypeDeActivateCommand(Activities);
    TypeActivateCommand activatePlan = new TypeActivateCommand(Plan);
    TypeDeActivateCommand deactivatePlan = new TypeDeActivateCommand(Plan);
    TypeActivateCommand activateSports = new TypeActivateCommand(Sports);
    TypeDeActivateCommand deactivateSports = new TypeDeActivateCommand(Sports);
    
    ActivateController.setCommand(0,activateActivities,deactivateActivities); 
    ActivateController.setCommand(1,activatePlan,deactivatePlan);
    ActivateController.setCommand(2,activateSports,deactivateSports);
    
    ActivateController.activeButtonWasPushed(0);
    ActivateController.deactiveButtonWasPushed(0);   
    ActivateController.activeButtonWasPushed(1);
    ActivateController.deactiveButtonWasPushed(1); 
    ActivateController.activeButtonWasPushed(2);
    ActivateController.deactiveButtonWasPushed(2); 
}
}