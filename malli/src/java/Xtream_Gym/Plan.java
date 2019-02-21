


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Erandi
 */
public class Plan extends Item{
    private String planId;

    public Plan(String planId, String id, String name, double price, String adminId) {
        super(id, name, price, adminId);
        this.planId = planId;
    }

    
    
    public String getId(){
       return this.id;
   }
    @Override
   public String getName(){
       return this.name;
   }
   public double getPrice(){
       return this.price;
   }
   
   public String getPlanId(){
       return this.planId;
   }
   
    public double getAdminId(){
       return this.getAdminId();
   }
}
