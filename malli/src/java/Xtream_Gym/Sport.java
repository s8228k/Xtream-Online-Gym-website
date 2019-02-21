public class Sport extends Item{
    private String sportId;

    public Sport(String sportId, String id, String name, double price, String adminId) {
        super(id, name, price, adminId);
        this.sportId = sportId;
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
   
   public String getSportId(){
       return this.sportId;
   }
   
    public double getAdminId(){
       return this.getAdminId();
   }
}
