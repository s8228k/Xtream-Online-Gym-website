abstract public class Item {
    protected String id ;
    protected String name;
    protected double price;
    protected String adminId;

    public Item(String id, String name, double price, String adminId) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.adminId = adminId;
    }

   abstract public String getId();
   abstract public String getName();
   abstract public double getPrice();
   abstract public double getAdminId();
    
}