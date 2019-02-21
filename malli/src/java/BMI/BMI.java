package BMI;

public class BMI {
    public String calcBMI(String height, String weight){
        double bmi = 0;
        double wei;
        double hei;
        
        try{
            wei = Double.parseDouble(weight);
            hei = Double.parseDouble(height);
            
            bmi =( wei / (hei*hei) );
            
            if(bmi>12 & bmi<18)
                return (""+bmi);
            
            else if(bmi>=18 & bmi<=25)
               return (""+bmi);
            
            else if(bmi>25 & bmi <70)              
                return (""+bmi);
            else
                return (""+bmi);
        }
        
        catch(ArithmeticException ae){
            System.out.println(ae.getMessage());            
        }
        
        catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        return (""+bmi);
    }
}
